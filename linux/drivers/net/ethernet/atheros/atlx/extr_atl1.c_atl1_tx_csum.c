
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tx_packet_desc {int word3; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; } ;
struct atl1_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int KERN_DEBUG ;
 int TPD_CCSUMOFFSET_MASK ;
 int TPD_CCSUMOFFSET_SHIFT ;
 int TPD_CUST_CSUM_EN_SHIFT ;
 int TPD_PLOADOFFSET_MASK ;
 int TPD_PLOADOFFSET_SHIFT ;
 int dev_printk (int ,int *,char*) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_msg_tx_err (struct atl1_adapter*) ;
 int skb_checksum_start_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1_tx_csum(struct atl1_adapter *adapter, struct sk_buff *skb,
 struct tx_packet_desc *ptpd)
{
 u8 css, cso;

 if (likely(skb->ip_summed == CHECKSUM_PARTIAL)) {
  css = skb_checksum_start_offset(skb);
  cso = css + (u8) skb->csum_offset;
  if (unlikely(css & 0x1)) {

   if (netif_msg_tx_err(adapter))
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "payload offset not an even number\n");
   return -1;
  }
  ptpd->word3 |= (css & TPD_PLOADOFFSET_MASK) <<
   TPD_PLOADOFFSET_SHIFT;
  ptpd->word3 |= (cso & TPD_CCSUMOFFSET_MASK) <<
   TPD_CCSUMOFFSET_SHIFT;
  ptpd->word3 |= 1 << TPD_CUST_CSUM_EN_SHIFT;
  return 1;
 }
 return 0;
}
