
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xgene_enet_pdata {scalar_t__ rm; } ;
struct xgene_enet_desc_ring {int num; int ndev; } ;


 struct xgene_enet_pdata* netdev_priv (int ) ;

__attribute__((used)) static inline u16 xgene_enet_dst_ring_num(struct xgene_enet_desc_ring *ring)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ring->ndev);

 return ((u16)pdata->rm << 10) | ring->num;
}
