
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_enet_pdata {scalar_t__ ring_csr_addr; } ;
struct xgene_enet_desc_ring {int ndev; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;
 struct xgene_enet_pdata* netdev_priv (int ) ;

__attribute__((used)) static void xgene_enet_ring_wr32(struct xgene_enet_desc_ring *ring,
     u32 offset, u32 data)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ring->ndev);

 iowrite32(data, pdata->ring_csr_addr + offset);
}
