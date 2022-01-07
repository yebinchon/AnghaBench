
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_bus {struct sdio_func* host_sdio; } ;
struct sdio_func {int dummy; } ;
struct b43_wldev {TYPE_2__* dev; } ;
struct b43_sdio {int * irq_handler; int * irq_handler_opaque; } ;
struct TYPE_4__ {TYPE_1__* sdev; } ;
struct TYPE_3__ {struct ssb_bus* bus; } ;


 int sdio_claim_host (struct sdio_func*) ;
 struct b43_sdio* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;

void b43_sdio_free_irq(struct b43_wldev *dev)
{
 struct ssb_bus *bus = dev->dev->sdev->bus;
 struct sdio_func *func = bus->host_sdio;
 struct b43_sdio *sdio = sdio_get_drvdata(func);

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_release_host(func);
 sdio->irq_handler_opaque = ((void*)0);
 sdio->irq_handler = ((void*)0);
}
