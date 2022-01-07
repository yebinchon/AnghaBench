
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned long sysclk_rate; } ;



__attribute__((used)) static unsigned int xlgmac_riwt_to_usec(struct xlgmac_pdata *pdata,
     unsigned int riwt)
{
 unsigned long rate;
 unsigned int ret;

 rate = pdata->sysclk_rate;






 ret = (riwt * 256) / (rate / 1000000);

 return ret;
}
