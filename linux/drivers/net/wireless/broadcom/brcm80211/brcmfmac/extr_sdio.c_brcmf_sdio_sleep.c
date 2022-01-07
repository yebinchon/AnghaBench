
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_sdio {TYPE_1__* sdiodev; } ;
struct TYPE_2__ {int func1; } ;


 int brcmf_sdio_bus_sleep (struct brcmf_sdio*,int,int) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

int brcmf_sdio_sleep(struct brcmf_sdio *bus, bool sleep)
{
 int ret;

 sdio_claim_host(bus->sdiodev->func1);
 ret = brcmf_sdio_bus_sleep(bus, sleep, 0);
 sdio_release_host(bus->sdiodev->func1);

 return ret;
}
