
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int frg; scalar_t__ csum; scalar_t__ udp; scalar_t__ tcp; scalar_t__ v6; scalar_t__ v4; int cnc; } ;
union Vmxnet3_GenericDesc {TYPE_2__ rcd; int * dword; } ;
struct vmxnet3_adapter {TYPE_1__* netdev; } ;
struct sk_buff {void* ip_summed; int csum; } ;
struct TYPE_3__ {int features; } ;


 int BUG_ON (int) ;
 void* CHECKSUM_PARTIAL ;
 void* CHECKSUM_UNNECESSARY ;
 int NETIF_F_RXCSUM ;
 int VMXNET3_RCD_CSUM_OK ;
 int VMXNET3_RCD_TUC_SHIFT ;
 int htons (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static void
vmxnet3_rx_csum(struct vmxnet3_adapter *adapter,
  struct sk_buff *skb,
  union Vmxnet3_GenericDesc *gdesc)
{
 if (!gdesc->rcd.cnc && adapter->netdev->features & NETIF_F_RXCSUM) {
  if (gdesc->rcd.v4 &&
      (le32_to_cpu(gdesc->dword[3]) &
       VMXNET3_RCD_CSUM_OK) == VMXNET3_RCD_CSUM_OK) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   BUG_ON(!(gdesc->rcd.tcp || gdesc->rcd.udp));
   BUG_ON(gdesc->rcd.frg);
  } else if (gdesc->rcd.v6 && (le32_to_cpu(gdesc->dword[3]) &
          (1 << VMXNET3_RCD_TUC_SHIFT))) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   BUG_ON(!(gdesc->rcd.tcp || gdesc->rcd.udp));
   BUG_ON(gdesc->rcd.frg);
  } else {
   if (gdesc->rcd.csum) {
    skb->csum = htons(gdesc->rcd.csum);
    skb->ip_summed = CHECKSUM_PARTIAL;
   } else {
    skb_checksum_none_assert(skb);
   }
  }
 } else {
  skb_checksum_none_assert(skb);
 }
}
