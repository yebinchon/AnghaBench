
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxsw_pci_queue_elem_info {int dummy; } ;
struct mlxsw_pci_queue {int count; scalar_t__ num; scalar_t__ producer_counter; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int core; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int MLXSW_PCI_AQ_PAGES ;
 int __mlxsw_pci_queue_page_get (struct mlxsw_pci_queue*,int) ;
 int mlxsw_cmd_hw2sw_rdq (int ,scalar_t__) ;
 int mlxsw_cmd_mbox_sw2hw_dq_cq_set (char*,scalar_t__) ;
 int mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set (char*,int) ;
 int mlxsw_cmd_mbox_sw2hw_dq_pa_set (char*,int,int ) ;
 int mlxsw_cmd_sw2hw_rdq (int ,char*,scalar_t__) ;
 int mlxsw_pci_queue_doorbell_producer_ring (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;
 struct mlxsw_pci_queue_elem_info* mlxsw_pci_queue_elem_info_get (struct mlxsw_pci_queue*,int) ;
 struct mlxsw_pci_queue_elem_info* mlxsw_pci_queue_elem_info_producer_get (struct mlxsw_pci_queue*) ;
 int mlxsw_pci_rdq_skb_alloc (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ;
 int mlxsw_pci_rdq_skb_free (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ;
 scalar_t__ mlxsw_pci_sdq_count (struct mlxsw_pci*) ;

__attribute__((used)) static int mlxsw_pci_rdq_init(struct mlxsw_pci *mlxsw_pci, char *mbox,
         struct mlxsw_pci_queue *q)
{
 struct mlxsw_pci_queue_elem_info *elem_info;
 u8 sdq_count = mlxsw_pci_sdq_count(mlxsw_pci);
 int i;
 int err;

 q->producer_counter = 0;
 q->consumer_counter = 0;




 mlxsw_cmd_mbox_sw2hw_dq_cq_set(mbox, sdq_count + q->num);
 mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set(mbox, 3);
 for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
  dma_addr_t mapaddr = __mlxsw_pci_queue_page_get(q, i);

  mlxsw_cmd_mbox_sw2hw_dq_pa_set(mbox, i, mapaddr);
 }

 err = mlxsw_cmd_sw2hw_rdq(mlxsw_pci->core, mbox, q->num);
 if (err)
  return err;

 mlxsw_pci_queue_doorbell_producer_ring(mlxsw_pci, q);

 for (i = 0; i < q->count; i++) {
  elem_info = mlxsw_pci_queue_elem_info_producer_get(q);
  BUG_ON(!elem_info);
  err = mlxsw_pci_rdq_skb_alloc(mlxsw_pci, elem_info);
  if (err)
   goto rollback;

  q->producer_counter++;
  mlxsw_pci_queue_doorbell_producer_ring(mlxsw_pci, q);
 }

 return 0;

rollback:
 for (i--; i >= 0; i--) {
  elem_info = mlxsw_pci_queue_elem_info_get(q, i);
  mlxsw_pci_rdq_skb_free(mlxsw_pci, elem_info);
 }
 mlxsw_cmd_hw2sw_rdq(mlxsw_pci->core, q->num);

 return err;
}
