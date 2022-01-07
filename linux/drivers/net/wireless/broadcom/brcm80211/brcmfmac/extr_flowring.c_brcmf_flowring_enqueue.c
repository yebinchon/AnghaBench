
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct brcmf_flowring_ring {int skblist; int blocked; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;


 scalar_t__ BRCMF_FLOWRING_HIGH ;
 scalar_t__ BRCMF_FLOWRING_LOW ;
 int MSGBUF ;
 int brcmf_dbg (int ,char*,size_t) ;
 int brcmf_flowring_block (struct brcmf_flowring*,size_t,int) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

u32 brcmf_flowring_enqueue(struct brcmf_flowring *flow, u16 flowid,
      struct sk_buff *skb)
{
 struct brcmf_flowring_ring *ring;

 ring = flow->rings[flowid];

 skb_queue_tail(&ring->skblist, skb);

 if (!ring->blocked &&
     (skb_queue_len(&ring->skblist) > BRCMF_FLOWRING_HIGH)) {
  brcmf_flowring_block(flow, flowid, 1);
  brcmf_dbg(MSGBUF, "Flowcontrol: BLOCK for ring %d\n", flowid);






  if (skb_queue_len(&ring->skblist) < BRCMF_FLOWRING_LOW)
   brcmf_flowring_block(flow, flowid, 0);
 }
 return skb_queue_len(&ring->skblist);
}
