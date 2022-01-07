
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct brcmf_flowring_ring {int skblist; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;


 int skb_queue_head (int *,struct sk_buff*) ;

void brcmf_flowring_reinsert(struct brcmf_flowring *flow, u16 flowid,
        struct sk_buff *skb)
{
 struct brcmf_flowring_ring *ring;

 ring = flow->rings[flowid];

 skb_queue_head(&ring->skblist, skb);
}
