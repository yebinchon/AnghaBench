
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dummy; } ;


 int DEVICE_SD ;
 int WBSD_CONF_DEVICE ;
 int WBSD_CONF_ENABLE ;
 int wbsd_lock_config (struct wbsd_host*) ;
 int wbsd_unlock_config (struct wbsd_host*) ;
 int wbsd_write_config (struct wbsd_host*,int ,int ) ;

__attribute__((used)) static void wbsd_chip_poweroff(struct wbsd_host *host)
{
 wbsd_unlock_config(host);

 wbsd_write_config(host, WBSD_CONF_DEVICE, DEVICE_SD);
 wbsd_write_config(host, WBSD_CONF_ENABLE, 0);

 wbsd_lock_config(host);
}
