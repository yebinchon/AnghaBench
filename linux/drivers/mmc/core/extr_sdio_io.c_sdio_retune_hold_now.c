
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {TYPE_1__* card; } ;
struct TYPE_2__ {int host; } ;


 int mmc_retune_hold_now (int ) ;

void sdio_retune_hold_now(struct sdio_func *func)
{
 mmc_retune_hold_now(func->card->host);
}
