
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int dummy; } ;


 int xlgmac_free_channels (struct xlgmac_pdata*) ;
 int xlgmac_free_rings (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_free_channels_and_rings(struct xlgmac_pdata *pdata)
{
 xlgmac_free_rings(pdata);

 xlgmac_free_channels(pdata);
}
