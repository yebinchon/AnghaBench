
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int scif_peer_bus ;

int scif_peer_bus_init(void)
{
 return bus_register(&scif_peer_bus);
}
