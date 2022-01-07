
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct brcmf_flowring_ring {int status; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;


 int RING_OPEN ;
 int brcmf_err (char*,size_t) ;

void brcmf_flowring_open(struct brcmf_flowring *flow, u16 flowid)
{
 struct brcmf_flowring_ring *ring;

 ring = flow->rings[flowid];
 if (!ring) {
  brcmf_err("Ring NULL, for flowid %d\n", flowid);
  return;
 }

 ring->status = RING_OPEN;
}
