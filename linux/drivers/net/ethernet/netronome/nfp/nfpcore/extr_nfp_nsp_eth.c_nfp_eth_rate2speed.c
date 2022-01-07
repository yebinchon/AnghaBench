
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum nfp_eth_rate { ____Placeholder_nfp_eth_rate } nfp_eth_rate ;
struct TYPE_3__ {int rate; unsigned int speed; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nsp_eth_rate_tbl ;

__attribute__((used)) static unsigned int nfp_eth_rate2speed(enum nfp_eth_rate rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(nsp_eth_rate_tbl); i++)
  if (nsp_eth_rate_tbl[i].rate == rate)
   return nsp_eth_rate_tbl[i].speed;

 return 0;
}
