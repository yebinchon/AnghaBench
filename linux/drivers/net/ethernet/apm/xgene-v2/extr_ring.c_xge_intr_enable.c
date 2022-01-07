
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xge_pdata {int dummy; } ;


 int DMAINTRMASK ;
 int RX_PKT_RCVD ;
 int TX_PKT_SENT ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

void xge_intr_enable(struct xge_pdata *pdata)
{
 u32 data;

 data = RX_PKT_RCVD | TX_PKT_SENT;
 xge_wr_csr(pdata, DMAINTRMASK, data);
}
