
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {int count; int num; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int core; } ;
typedef int dma_addr_t ;


 int MLXSW_PCI_AQ_PAGES ;
 int __mlxsw_pci_queue_page_get (struct mlxsw_pci_queue*,int) ;
 int ilog2 (int) ;
 int mlxsw_cmd_mbox_sw2hw_eq_int_msix_set (char*,int) ;
 int mlxsw_cmd_mbox_sw2hw_eq_log_eq_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_sw2hw_eq_pa_set (char*,int,int ) ;
 int mlxsw_cmd_mbox_sw2hw_eq_st_set (char*,int) ;
 int mlxsw_cmd_sw2hw_eq (int ,char*,int ) ;
 int mlxsw_pci_eqe_owner_set (char*,int) ;
 int mlxsw_pci_queue_doorbell_arm_consumer_ring (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;
 int mlxsw_pci_queue_doorbell_consumer_ring (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;
 char* mlxsw_pci_queue_elem_get (struct mlxsw_pci_queue*,int) ;

__attribute__((used)) static int mlxsw_pci_eq_init(struct mlxsw_pci *mlxsw_pci, char *mbox,
        struct mlxsw_pci_queue *q)
{
 int i;
 int err;

 q->consumer_counter = 0;

 for (i = 0; i < q->count; i++) {
  char *elem = mlxsw_pci_queue_elem_get(q, i);

  mlxsw_pci_eqe_owner_set(elem, 1);
 }

 mlxsw_cmd_mbox_sw2hw_eq_int_msix_set(mbox, 1);
 mlxsw_cmd_mbox_sw2hw_eq_st_set(mbox, 1);
 mlxsw_cmd_mbox_sw2hw_eq_log_eq_size_set(mbox, ilog2(q->count));
 for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
  dma_addr_t mapaddr = __mlxsw_pci_queue_page_get(q, i);

  mlxsw_cmd_mbox_sw2hw_eq_pa_set(mbox, i, mapaddr);
 }
 err = mlxsw_cmd_sw2hw_eq(mlxsw_pci->core, mbox, q->num);
 if (err)
  return err;
 mlxsw_pci_queue_doorbell_consumer_ring(mlxsw_pci, q);
 mlxsw_pci_queue_doorbell_arm_consumer_ring(mlxsw_pci, q);
 return 0;
}
