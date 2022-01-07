
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;
struct TYPE_4__ {TYPE_1__ rdq; } ;
struct mlxsw_pci_queue_elem_info {char* elem; TYPE_2__ u; } ;
struct mlxsw_pci {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int mlxsw_pci_wqe_frag_unmap (struct mlxsw_pci*,char*,int ,int ) ;

__attribute__((used)) static void mlxsw_pci_rdq_skb_free(struct mlxsw_pci *mlxsw_pci,
       struct mlxsw_pci_queue_elem_info *elem_info)
{
 struct sk_buff *skb;
 char *wqe;

 skb = elem_info->u.rdq.skb;
 wqe = elem_info->elem;

 mlxsw_pci_wqe_frag_unmap(mlxsw_pci, wqe, 0, DMA_FROM_DEVICE);
 dev_kfree_skb_any(skb);
}
