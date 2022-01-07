
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_bus {int * socket_ops; int * sfp; int * sfp_dev; } ;



__attribute__((used)) static void sfp_socket_clear(struct sfp_bus *bus)
{
 bus->sfp_dev = ((void*)0);
 bus->sfp = ((void*)0);
 bus->socket_ops = ((void*)0);
}
