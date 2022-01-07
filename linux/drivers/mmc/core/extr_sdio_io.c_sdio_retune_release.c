
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {TYPE_1__* card; } ;
struct TYPE_2__ {int host; } ;


 int mmc_retune_release (int ) ;

void sdio_retune_release(struct sdio_func *func)
{
 mmc_retune_release(func->card->host);
}
