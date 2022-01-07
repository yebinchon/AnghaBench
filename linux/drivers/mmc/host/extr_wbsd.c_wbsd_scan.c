
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int config; int unlock_code; int chip_id; } ;


 int ARRAY_SIZE (int*) ;
 int DBG (char*,int,int) ;
 int DRIVER_NAME ;
 int ENODEV ;
 int WBSD_CONF_ID_HI ;
 int WBSD_CONF_ID_LO ;
 int* config_ports ;
 int inb (int) ;
 int outb (int ,int) ;
 int release_region (int,int) ;
 int request_region (int,int,int ) ;
 int* unlock_codes ;
 int* valid_ids ;
 int wbsd_lock_config (struct wbsd_host*) ;
 int wbsd_unlock_config (struct wbsd_host*) ;

__attribute__((used)) static int wbsd_scan(struct wbsd_host *host)
{
 int i, j, k;
 int id;





 for (i = 0; i < ARRAY_SIZE(config_ports); i++) {
  if (!request_region(config_ports[i], 2, DRIVER_NAME))
   continue;

  for (j = 0; j < ARRAY_SIZE(unlock_codes); j++) {
   id = 0xFFFF;

   host->config = config_ports[i];
   host->unlock_code = unlock_codes[j];

   wbsd_unlock_config(host);

   outb(WBSD_CONF_ID_HI, config_ports[i]);
   id = inb(config_ports[i] + 1) << 8;

   outb(WBSD_CONF_ID_LO, config_ports[i]);
   id |= inb(config_ports[i] + 1);

   wbsd_lock_config(host);

   for (k = 0; k < ARRAY_SIZE(valid_ids); k++) {
    if (id == valid_ids[k]) {
     host->chip_id = id;

     return 0;
    }
   }

   if (id != 0xFFFF) {
    DBG("Unknown hardware (id %x) found at %x\n",
     id, config_ports[i]);
   }
  }

  release_region(config_ports[i], 2);
 }

 host->config = 0;
 host->unlock_code = 0;

 return -ENODEV;
}
