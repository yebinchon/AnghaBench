
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int base; int irq; int dma; } ;


 int DEVICE_SD ;
 int WBSD_CONF_DEVICE ;
 int WBSD_CONF_DRQ ;
 int WBSD_CONF_IRQ ;
 int WBSD_CONF_PORT_HI ;
 int WBSD_CONF_PORT_LO ;
 int wbsd_lock_config (struct wbsd_host*) ;
 int wbsd_read_config (struct wbsd_host*,int ) ;
 int wbsd_unlock_config (struct wbsd_host*) ;
 int wbsd_write_config (struct wbsd_host*,int ,int ) ;

__attribute__((used)) static int wbsd_chip_validate(struct wbsd_host *host)
{
 int base, irq, dma;

 wbsd_unlock_config(host);




 wbsd_write_config(host, WBSD_CONF_DEVICE, DEVICE_SD);




 base = wbsd_read_config(host, WBSD_CONF_PORT_HI) << 8;
 base |= wbsd_read_config(host, WBSD_CONF_PORT_LO);

 irq = wbsd_read_config(host, WBSD_CONF_IRQ);

 dma = wbsd_read_config(host, WBSD_CONF_DRQ);

 wbsd_lock_config(host);




 if (base != host->base)
  return 0;
 if (irq != host->irq)
  return 0;
 if ((dma != host->dma) && (host->dma != -1))
  return 0;

 return 1;
}
