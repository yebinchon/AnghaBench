
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct brcmf_flowring_ring {size_t hash_id; } ;
struct brcmf_flowring {TYPE_1__* hash; struct brcmf_flowring_ring** rings; } ;
struct TYPE_2__ {int ifidx; } ;



u8 brcmf_flowring_ifidx_get(struct brcmf_flowring *flow, u16 flowid)
{
 struct brcmf_flowring_ring *ring;
 u16 hash_idx;

 ring = flow->rings[flowid];
 hash_idx = ring->hash_id;

 return flow->hash[hash_idx].ifidx;
}
