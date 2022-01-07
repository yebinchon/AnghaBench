
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned long sysclk_rate; } ;


 int DBGPR (char*) ;

__attribute__((used)) static unsigned int xgbe_usec_to_riwt(struct xgbe_prv_data *pdata,
          unsigned int usec)
{
 unsigned long rate;
 unsigned int ret;

 DBGPR("-->xgbe_usec_to_riwt\n");

 rate = pdata->sysclk_rate;







 ret = (usec * (rate / 1000000)) / 256;

 DBGPR("<--xgbe_usec_to_riwt\n");

 return ret;
}
