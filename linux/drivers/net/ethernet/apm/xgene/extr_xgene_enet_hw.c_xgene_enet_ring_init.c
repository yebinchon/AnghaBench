
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xgene_enet_desc_ring {int* state; int dma; int cfgsize; } ;
typedef enum xgene_enet_ring_cfgsize { ____Placeholder_xgene_enet_ring_cfgsize } xgene_enet_ring_cfgsize ;


 int ACCEPTLERR ;
 int CREATE_MASK (int,int ) ;
 int CREATE_MASK_ULL (int,int) ;
 int QCOHERENT ;
 int RINGADDRH_LEN ;
 int RINGADDRH_POS ;
 int RINGADDRL_LEN ;
 int RINGADDRL_POS ;
 int RINGSIZE_LEN ;
 int RINGSIZE_POS ;
 int SELTHRSH_LEN ;
 int SELTHRSH_POS ;

__attribute__((used)) static void xgene_enet_ring_init(struct xgene_enet_desc_ring *ring)
{
 u32 *ring_cfg = ring->state;
 u64 addr = ring->dma;
 enum xgene_enet_ring_cfgsize cfgsize = ring->cfgsize;

 ring_cfg[4] |= (1 << SELTHRSH_POS) &
   CREATE_MASK(SELTHRSH_POS, SELTHRSH_LEN);
 ring_cfg[3] |= ACCEPTLERR;
 ring_cfg[2] |= QCOHERENT;

 addr >>= 8;
 ring_cfg[2] |= (addr << RINGADDRL_POS) &
   CREATE_MASK_ULL(RINGADDRL_POS, RINGADDRL_LEN);
 addr >>= RINGADDRL_LEN;
 ring_cfg[3] |= addr & CREATE_MASK_ULL(RINGADDRH_POS, RINGADDRH_LEN);
 ring_cfg[3] |= ((u32)cfgsize << RINGSIZE_POS) &
   CREATE_MASK(RINGSIZE_POS, RINGSIZE_LEN);
}
