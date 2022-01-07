
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int base; int irq; int dma; } ;


 int DEVICE_SD ;
 int WBSD_CONF_DEVICE ;
 int WBSD_CONF_DRQ ;
 int WBSD_CONF_ENABLE ;
 int WBSD_CONF_IRQ ;
 int WBSD_CONF_PINS ;
 int WBSD_CONF_PORT_HI ;
 int WBSD_CONF_PORT_LO ;
 int WBSD_CONF_POWER ;
 int WBSD_CONF_SWRST ;
 int WBSD_PINS_DETECT_GP11 ;
 int wbsd_lock_config (struct wbsd_host*) ;
 int wbsd_unlock_config (struct wbsd_host*) ;
 int wbsd_write_config (struct wbsd_host*,int ,int) ;

__attribute__((used)) static void wbsd_chip_config(struct wbsd_host *host)
{
 wbsd_unlock_config(host);




 wbsd_write_config(host, WBSD_CONF_SWRST, 1);
 wbsd_write_config(host, WBSD_CONF_SWRST, 0);




 wbsd_write_config(host, WBSD_CONF_DEVICE, DEVICE_SD);




 wbsd_write_config(host, WBSD_CONF_PINS, WBSD_PINS_DETECT_GP11);




 wbsd_write_config(host, WBSD_CONF_PORT_HI, host->base >> 8);
 wbsd_write_config(host, WBSD_CONF_PORT_LO, host->base & 0xff);

 wbsd_write_config(host, WBSD_CONF_IRQ, host->irq);

 if (host->dma >= 0)
  wbsd_write_config(host, WBSD_CONF_DRQ, host->dma);




 wbsd_write_config(host, WBSD_CONF_ENABLE, 1);
 wbsd_write_config(host, WBSD_CONF_POWER, 0x20);

 wbsd_lock_config(host);
}
