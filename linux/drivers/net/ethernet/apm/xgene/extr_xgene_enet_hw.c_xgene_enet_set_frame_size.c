
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int dummy; } ;


 int MAX_FRAME_LEN_ADDR ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_enet_set_frame_size(struct xgene_enet_pdata *pdata, int size)
{
 xgene_enet_wr_mac(pdata, MAX_FRAME_LEN_ADDR, size);
}
