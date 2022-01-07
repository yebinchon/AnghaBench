
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int dummy; } ;


 int HSTMAXFRAME_LENGTH_ADDR ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_xgmac_set_frame_size(struct xgene_enet_pdata *pdata, int size)
{
 xgene_enet_wr_mac(pdata, HSTMAXFRAME_LENGTH_ADDR,
     ((((size + 2) >> 2) << 16) | size));
}
