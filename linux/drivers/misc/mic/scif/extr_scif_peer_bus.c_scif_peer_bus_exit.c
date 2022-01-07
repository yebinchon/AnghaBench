
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int scif_peer_bus ;

void scif_peer_bus_exit(void)
{
 bus_unregister(&scif_peer_bus);
}
