
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ v; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct mlxsw_pci_queue {int count; int num; TYPE_2__ u; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int core; } ;
typedef int dma_addr_t ;


 int MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_1 ;
 int MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_2 ;
 int MLXSW_PCI_AQ_PAGES ;
 scalar_t__ MLXSW_PCI_CQE_V1 ;
 scalar_t__ MLXSW_PCI_CQE_V2 ;
 int MLXSW_PCI_EQ_COMP_NUM ;
 int __mlxsw_pci_queue_page_get (struct mlxsw_pci_queue*,int) ;
 int ilog2 (int) ;
 int mlxsw_cmd_mbox_sw2hw_cq_c_eqn_set (char*,int ) ;
 int mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set (char*,int ) ;
 int mlxsw_cmd_mbox_sw2hw_cq_log_cq_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_sw2hw_cq_pa_set (char*,int,int ) ;
 int mlxsw_cmd_mbox_sw2hw_cq_st_set (char*,int ) ;
 int mlxsw_cmd_sw2hw_cq (int ,char*,int ) ;
 int mlxsw_pci_cqe_owner_set (scalar_t__,char*,int) ;
 int mlxsw_pci_queue_doorbell_arm_consumer_ring (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;
 int mlxsw_pci_queue_doorbell_consumer_ring (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;
 char* mlxsw_pci_queue_elem_get (struct mlxsw_pci_queue*,int) ;

__attribute__((used)) static int mlxsw_pci_cq_init(struct mlxsw_pci *mlxsw_pci, char *mbox,
        struct mlxsw_pci_queue *q)
{
 int i;
 int err;

 q->consumer_counter = 0;

 for (i = 0; i < q->count; i++) {
  char *elem = mlxsw_pci_queue_elem_get(q, i);

  mlxsw_pci_cqe_owner_set(q->u.cq.v, elem, 1);
 }

 if (q->u.cq.v == MLXSW_PCI_CQE_V1)
  mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set(mbox,
    MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_1);
 else if (q->u.cq.v == MLXSW_PCI_CQE_V2)
  mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set(mbox,
    MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_2);

 mlxsw_cmd_mbox_sw2hw_cq_c_eqn_set(mbox, MLXSW_PCI_EQ_COMP_NUM);
 mlxsw_cmd_mbox_sw2hw_cq_st_set(mbox, 0);
 mlxsw_cmd_mbox_sw2hw_cq_log_cq_size_set(mbox, ilog2(q->count));
 for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
  dma_addr_t mapaddr = __mlxsw_pci_queue_page_get(q, i);

  mlxsw_cmd_mbox_sw2hw_cq_pa_set(mbox, i, mapaddr);
 }
 err = mlxsw_cmd_sw2hw_cq(mlxsw_pci->core, mbox, q->num);
 if (err)
  return err;
 mlxsw_pci_queue_doorbell_consumer_ring(mlxsw_pci, q);
 mlxsw_pci_queue_doorbell_arm_consumer_ring(mlxsw_pci, q);
 return 0;
}
