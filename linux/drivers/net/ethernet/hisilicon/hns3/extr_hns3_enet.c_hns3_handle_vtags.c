
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vlan_ethhdr {int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; } ;
struct hns3_enet_ring {TYPE_1__* tqp; } ;
struct TYPE_6__ {TYPE_2__* netdev; } ;
struct hnae3_handle {scalar_t__ port_base_vlan_state; TYPE_3__ kinfo; } ;
struct TYPE_5__ {int features; } ;
struct TYPE_4__ {struct hnae3_handle* handle; } ;


 int EINVAL ;
 int ETH_P_8021Q ;
 scalar_t__ HNAE3_PORT_BASE_VLAN_DISABLE ;
 scalar_t__ HNAE3_PORT_BASE_VLAN_ENABLE ;
 int HNS3_INNER_VLAN_TAG ;
 int HNS3_OUTER_VLAN_TAG ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 int cpu_to_be16 (int) ;
 scalar_t__ htons (int ) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ skb_vlan_tagged_multi (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 void* vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static int hns3_handle_vtags(struct hns3_enet_ring *tx_ring,
        struct sk_buff *skb)
{
 struct hnae3_handle *handle = tx_ring->tqp->handle;
 struct vlan_ethhdr *vhdr;
 int rc;

 if (!(skb->protocol == htons(ETH_P_8021Q) ||
       skb_vlan_tag_present(skb)))
  return 0;




 if (unlikely(skb_vlan_tagged_multi(skb) &&
       handle->port_base_vlan_state ==
       HNAE3_PORT_BASE_VLAN_ENABLE))
  return -EINVAL;

 if (skb->protocol == htons(ETH_P_8021Q) &&
     !(handle->kinfo.netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {




  skb->protocol = vlan_get_protocol(skb);
  return 0;
 }

 if (skb_vlan_tag_present(skb)) {



  if (skb->protocol == htons(ETH_P_8021Q) &&
      handle->port_base_vlan_state ==
      HNAE3_PORT_BASE_VLAN_DISABLE)
   rc = HNS3_OUTER_VLAN_TAG;
  else
   rc = HNS3_INNER_VLAN_TAG;

  skb->protocol = vlan_get_protocol(skb);
  return rc;
 }

 rc = skb_cow_head(skb, 0);
 if (unlikely(rc < 0))
  return rc;

 vhdr = (struct vlan_ethhdr *)skb->data;
 vhdr->h_vlan_TCI |= cpu_to_be16((skb->priority << VLAN_PRIO_SHIFT)
      & VLAN_PRIO_MASK);

 skb->protocol = vlan_get_protocol(skb);
 return 0;
}
