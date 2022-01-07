
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int dummy; } ;


 int MAC_CONFIG_1 ;
 int SOFT_RESET ;
 int xge_wr_csr (struct xge_pdata*,int ,int ) ;

void xge_mac_reset(struct xge_pdata *pdata)
{
 xge_wr_csr(pdata, MAC_CONFIG_1, SOFT_RESET);
 xge_wr_csr(pdata, MAC_CONFIG_1, 0);
}
