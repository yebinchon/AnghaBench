
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshsd_host {scalar_t__ ioaddr; } ;


 scalar_t__ SDIO_BASE ;
 scalar_t__ SDIO_LEDCTRL ;
 int iowrite16 (unsigned char,scalar_t__) ;

__attribute__((used)) static void toshsd_set_led(struct toshsd_host *host, unsigned char state)
{
 iowrite16(state, host->ioaddr + SDIO_BASE + SDIO_LEDCTRL);
}
