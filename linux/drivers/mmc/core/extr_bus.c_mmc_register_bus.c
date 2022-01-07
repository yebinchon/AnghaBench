
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int mmc_bus_type ;

int mmc_register_bus(void)
{
 return bus_register(&mmc_bus_type);
}
