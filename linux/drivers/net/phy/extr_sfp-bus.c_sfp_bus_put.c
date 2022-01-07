
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_bus {int kref; } ;


 int kref_put_mutex (int *,int ,int *) ;
 int sfp_bus_release ;
 int sfp_mutex ;

__attribute__((used)) static void sfp_bus_put(struct sfp_bus *bus)
{
 kref_put_mutex(&bus->kref, sfp_bus_release, &sfp_mutex);
}
