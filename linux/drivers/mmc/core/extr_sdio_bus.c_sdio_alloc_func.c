
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int * bus; int * parent; } ;
struct sdio_func {TYPE_1__ dev; struct mmc_card* card; int tmpbuf; } ;
struct mmc_card {int dev; } ;


 int ENOMEM ;
 struct sdio_func* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 int kfree (struct sdio_func*) ;
 int kmalloc (int,int ) ;
 struct sdio_func* kzalloc (int,int ) ;
 int sdio_bus_type ;
 int sdio_release_func ;

struct sdio_func *sdio_alloc_func(struct mmc_card *card)
{
 struct sdio_func *func;

 func = kzalloc(sizeof(struct sdio_func), GFP_KERNEL);
 if (!func)
  return ERR_PTR(-ENOMEM);





 func->tmpbuf = kmalloc(4, GFP_KERNEL);
 if (!func->tmpbuf) {
  kfree(func);
  return ERR_PTR(-ENOMEM);
 }

 func->card = card;

 device_initialize(&func->dev);

 func->dev.parent = &card->dev;
 func->dev.bus = &sdio_bus_type;
 func->dev.release = sdio_release_func;

 return func;
}
