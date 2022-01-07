
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xge_pdata {int dummy; } ;


 int MAC_CONFIG_1 ;
 int RX_EN ;
 int TX_EN ;
 int xge_rd_csr (struct xge_pdata*,int ) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

void xge_mac_enable(struct xge_pdata *pdata)
{
 u32 data;

 data = xge_rd_csr(pdata, MAC_CONFIG_1);
 data |= TX_EN | RX_EN;
 xge_wr_csr(pdata, MAC_CONFIG_1, data);

 data = xge_rd_csr(pdata, MAC_CONFIG_1);
}
