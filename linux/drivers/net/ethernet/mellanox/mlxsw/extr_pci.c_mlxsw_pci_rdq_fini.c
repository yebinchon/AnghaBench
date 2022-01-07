
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue_elem_info {int dummy; } ;
struct mlxsw_pci_queue {int count; int num; } ;
struct mlxsw_pci {int core; } ;


 int mlxsw_cmd_hw2sw_rdq (int ,int ) ;
 struct mlxsw_pci_queue_elem_info* mlxsw_pci_queue_elem_info_get (struct mlxsw_pci_queue*,int) ;
 int mlxsw_pci_rdq_skb_free (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ;

__attribute__((used)) static void mlxsw_pci_rdq_fini(struct mlxsw_pci *mlxsw_pci,
          struct mlxsw_pci_queue *q)
{
 struct mlxsw_pci_queue_elem_info *elem_info;
 int i;

 mlxsw_cmd_hw2sw_rdq(mlxsw_pci->core, q->num);
 for (i = 0; i < q->count; i++) {
  elem_info = mlxsw_pci_queue_elem_info_get(q, i);
  mlxsw_pci_rdq_skb_free(mlxsw_pci, elem_info);
 }
}
