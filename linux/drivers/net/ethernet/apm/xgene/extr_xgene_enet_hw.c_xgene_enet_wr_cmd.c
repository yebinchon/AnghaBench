
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int cmd; } ;


 int iowrite32 (int,int ) ;

__attribute__((used)) static void xgene_enet_wr_cmd(struct xgene_enet_desc_ring *ring, int count)
{
 iowrite32(count, ring->cmd);
}
