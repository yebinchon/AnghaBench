
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int dummy; } ;


 int CSR_PBM_COAL ;
 int CSR_PBM_CTICK0 ;
 int CSR_PBM_CTICK1 ;
 int CSR_PBM_CTICK2 ;
 int CSR_PBM_CTICK3 ;
 int CSR_THRESHOLD0_SET1 ;
 int CSR_THRESHOLD1_SET1 ;
 int xgene_enet_ring_wr32 (struct xgene_enet_desc_ring*,int ,int) ;

__attribute__((used)) static void xgene_enet_setup_coalescing(struct xgene_enet_desc_ring *ring)
{
 u32 data = 0x77777777;

 xgene_enet_ring_wr32(ring, CSR_PBM_COAL, 0x8e);
 xgene_enet_ring_wr32(ring, CSR_PBM_CTICK0, data);
 xgene_enet_ring_wr32(ring, CSR_PBM_CTICK1, data);
 xgene_enet_ring_wr32(ring, CSR_PBM_CTICK2, data);
 xgene_enet_ring_wr32(ring, CSR_PBM_CTICK3, data);
 xgene_enet_ring_wr32(ring, CSR_THRESHOLD0_SET1, 0x08);
 xgene_enet_ring_wr32(ring, CSR_THRESHOLD1_SET1, 0x10);
}
