
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int cx25821_alsa_init_callback ;
 struct device_driver* driver_find (char*,int *) ;
 int driver_for_each_device (struct device_driver*,int *,int *,int ) ;
 int pci_bus_type ;

__attribute__((used)) static int cx25821_alsa_init(void)
{
 struct device_driver *drv = driver_find("cx25821", &pci_bus_type);

 return driver_for_each_device(drv, ((void*)0), ((void*)0), cx25821_alsa_init_callback);

}
