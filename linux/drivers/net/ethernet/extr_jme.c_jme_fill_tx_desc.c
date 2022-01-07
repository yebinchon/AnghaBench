
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flags; int vlan; int mss; int pktsize; } ;
struct txdesc {TYPE_1__ desc1; scalar_t__* dw; } ;
struct sk_buff {int len; } ;
struct jme_ring {struct jme_buffer_info* bufinf; scalar_t__ desc; } ;
struct jme_buffer_info {unsigned long start_xmit; int len; struct sk_buff* skb; scalar_t__ nr_desc; } ;
struct jme_adapter {struct jme_ring* txring; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;


 int TXFLAG_INT ;
 int TXFLAG_OWN ;
 int cpu_to_le16 (int ) ;
 unsigned long jiffies ;
 int jme_map_tx_skb (struct jme_adapter*,struct sk_buff*,int) ;
 int jme_tx_csum (struct jme_adapter*,struct sk_buff*,int*) ;
 scalar_t__ jme_tx_tso (struct sk_buff*,int *,int*) ;
 int jme_tx_vlan (struct sk_buff*,int *,int*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static int
jme_fill_tx_desc(struct jme_adapter *jme, struct sk_buff *skb, int idx)
{
 struct jme_ring *txring = &(jme->txring[0]);
 struct txdesc *txdesc;
 struct jme_buffer_info *txbi;
 u8 flags;
 int ret = 0;

 txdesc = (struct txdesc *)txring->desc + idx;
 txbi = txring->bufinf + idx;

 txdesc->dw[0] = 0;
 txdesc->dw[1] = 0;
 txdesc->dw[2] = 0;
 txdesc->dw[3] = 0;
 txdesc->desc1.pktsize = cpu_to_le16(skb->len);







 wmb();
 flags = TXFLAG_OWN | TXFLAG_INT;



 if (jme_tx_tso(skb, &txdesc->desc1.mss, &flags))
  jme_tx_csum(jme, skb, &flags);
 jme_tx_vlan(skb, &txdesc->desc1.vlan, &flags);
 ret = jme_map_tx_skb(jme, skb, idx);
 if (ret)
  return ret;

 txdesc->desc1.flags = flags;




 wmb();
 txbi->nr_desc = skb_shinfo(skb)->nr_frags + 2;
 txbi->skb = skb;
 txbi->len = skb->len;
 txbi->start_xmit = jiffies;
 if (!txbi->start_xmit)
  txbi->start_xmit = (0UL-1);

 return 0;
}
