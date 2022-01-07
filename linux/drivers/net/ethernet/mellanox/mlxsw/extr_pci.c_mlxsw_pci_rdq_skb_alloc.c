
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;
struct TYPE_4__ {TYPE_1__ rdq; } ;
struct mlxsw_pci_queue_elem_info {char* elem; TYPE_2__ u; } ;
struct mlxsw_pci {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 size_t MLXSW_PORT_MAX_MTU ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int mlxsw_pci_wqe_frag_map (struct mlxsw_pci*,char*,int ,int ,size_t,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int *,size_t) ;

__attribute__((used)) static int mlxsw_pci_rdq_skb_alloc(struct mlxsw_pci *mlxsw_pci,
       struct mlxsw_pci_queue_elem_info *elem_info)
{
 size_t buf_len = MLXSW_PORT_MAX_MTU;
 char *wqe = elem_info->elem;
 struct sk_buff *skb;
 int err;

 elem_info->u.rdq.skb = ((void*)0);
 skb = netdev_alloc_skb_ip_align(((void*)0), buf_len);
 if (!skb)
  return -ENOMEM;



 err = mlxsw_pci_wqe_frag_map(mlxsw_pci, wqe, 0, skb->data,
         buf_len, DMA_FROM_DEVICE);
 if (err)
  goto err_frag_map;

 elem_info->u.rdq.skb = skb;
 return 0;

err_frag_map:
 dev_kfree_skb_any(skb);
 return err;
}
