
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned long sysclk_rate; } ;



__attribute__((used)) static unsigned int xlgmac_usec_to_riwt(struct xlgmac_pdata *pdata,
     unsigned int usec)
{
 unsigned long rate;
 unsigned int ret;

 rate = pdata->sysclk_rate;






 ret = (usec * (rate / 1000000)) / 256;

 return ret;
}
