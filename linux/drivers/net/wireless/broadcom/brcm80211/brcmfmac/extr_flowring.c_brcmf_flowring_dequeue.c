
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct brcmf_flowring_ring {scalar_t__ status; int skblist; scalar_t__ blocked; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;


 scalar_t__ BRCMF_FLOWRING_LOW ;
 int MSGBUF ;
 scalar_t__ RING_OPEN ;
 int brcmf_dbg (int ,char*,size_t) ;
 int brcmf_flowring_block (struct brcmf_flowring*,size_t,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;

struct sk_buff *brcmf_flowring_dequeue(struct brcmf_flowring *flow, u16 flowid)
{
 struct brcmf_flowring_ring *ring;
 struct sk_buff *skb;

 ring = flow->rings[flowid];
 if (ring->status != RING_OPEN)
  return ((void*)0);

 skb = skb_dequeue(&ring->skblist);

 if (ring->blocked &&
     (skb_queue_len(&ring->skblist) < BRCMF_FLOWRING_LOW)) {
  brcmf_flowring_block(flow, flowid, 0);
  brcmf_dbg(MSGBUF, "Flowcontrol: OPEN for ring %d\n", flowid);
 }

 return skb;
}
