
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int dummy; } ;


 int DMAINTRMASK ;
 int xge_wr_csr (struct xge_pdata*,int ,int ) ;

void xge_intr_disable(struct xge_pdata *pdata)
{
 xge_wr_csr(pdata, DMAINTRMASK, 0);
}
