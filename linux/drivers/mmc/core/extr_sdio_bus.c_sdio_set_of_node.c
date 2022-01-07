
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct sdio_func {int num; TYPE_2__ dev; TYPE_1__* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_3__ {struct mmc_host* host; } ;


 int mmc_of_find_child_device (struct mmc_host*,int ) ;

__attribute__((used)) static void sdio_set_of_node(struct sdio_func *func)
{
 struct mmc_host *host = func->card->host;

 func->dev.of_node = mmc_of_find_child_device(host, func->num);
}
