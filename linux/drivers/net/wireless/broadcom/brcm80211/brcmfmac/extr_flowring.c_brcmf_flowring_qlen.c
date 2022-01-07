
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct brcmf_flowring_ring {scalar_t__ status; int skblist; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;


 scalar_t__ RING_OPEN ;
 int skb_queue_len (int *) ;

u32 brcmf_flowring_qlen(struct brcmf_flowring *flow, u16 flowid)
{
 struct brcmf_flowring_ring *ring;

 ring = flow->rings[flowid];
 if (!ring)
  return 0;

 if (ring->status != RING_OPEN)
  return 0;

 return skb_queue_len(&ring->skblist);
}
