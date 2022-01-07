
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int dummy; } ;


 int ETIMEDOUT ;
 int PHY_WAIT_ITERATIONS ;
 int SMI ;
 int SMI_BUSY ;
 int msleep (int) ;
 int rdl (struct pxa168_eth_private*,int ) ;

__attribute__((used)) static int smi_wait_ready(struct pxa168_eth_private *pep)
{
 int i = 0;


 for (i = 0; rdl(pep, SMI) & SMI_BUSY; i++) {
  if (i == PHY_WAIT_ITERATIONS)
   return -ETIMEDOUT;
  msleep(10);
 }

 return 0;
}
