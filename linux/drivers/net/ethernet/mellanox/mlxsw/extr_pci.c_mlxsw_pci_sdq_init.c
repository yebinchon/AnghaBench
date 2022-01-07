
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {int num; scalar_t__ consumer_counter; scalar_t__ producer_counter; } ;
struct mlxsw_pci {int core; } ;
typedef int dma_addr_t ;


 int MLXSW_PCI_AQ_PAGES ;
 int __mlxsw_pci_queue_page_get (struct mlxsw_pci_queue*,int) ;
 int mlxsw_cmd_mbox_sw2hw_dq_cq_set (char*,int ) ;
 int mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set (char*,int) ;
 int mlxsw_cmd_mbox_sw2hw_dq_pa_set (char*,int,int ) ;
 int mlxsw_cmd_mbox_sw2hw_dq_sdq_tclass_set (char*,int) ;
 int mlxsw_cmd_sw2hw_sdq (int ,char*,int ) ;
 int mlxsw_pci_queue_doorbell_producer_ring (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;

__attribute__((used)) static int mlxsw_pci_sdq_init(struct mlxsw_pci *mlxsw_pci, char *mbox,
         struct mlxsw_pci_queue *q)
{
 int i;
 int err;

 q->producer_counter = 0;
 q->consumer_counter = 0;


 mlxsw_cmd_mbox_sw2hw_dq_cq_set(mbox, q->num);
 mlxsw_cmd_mbox_sw2hw_dq_sdq_tclass_set(mbox, 3);
 mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set(mbox, 3);
 for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
  dma_addr_t mapaddr = __mlxsw_pci_queue_page_get(q, i);

  mlxsw_cmd_mbox_sw2hw_dq_pa_set(mbox, i, mapaddr);
 }

 err = mlxsw_cmd_sw2hw_sdq(mlxsw_pci->core, mbox, q->num);
 if (err)
  return err;
 mlxsw_pci_queue_doorbell_producer_ring(mlxsw_pci, q);
 return 0;
}
