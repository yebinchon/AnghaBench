
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {TYPE_1__* card; } ;
struct TYPE_2__ {int host; } ;


 scalar_t__ WARN_ON (int) ;
 int mmc_claim_host (int ) ;

void sdio_claim_host(struct sdio_func *func)
{
 if (WARN_ON(!func))
  return;

 mmc_claim_host(func->card->host);
}
