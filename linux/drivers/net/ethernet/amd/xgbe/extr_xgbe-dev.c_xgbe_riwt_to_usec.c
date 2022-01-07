
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned long sysclk_rate; } ;


 int DBGPR (char*) ;

__attribute__((used)) static unsigned int xgbe_riwt_to_usec(struct xgbe_prv_data *pdata,
          unsigned int riwt)
{
 unsigned long rate;
 unsigned int ret;

 DBGPR("-->xgbe_riwt_to_usec\n");

 rate = pdata->sysclk_rate;







 ret = (riwt * 256) / (rate / 1000000);

 DBGPR("<--xgbe_riwt_to_usec\n");

 return ret;
}
