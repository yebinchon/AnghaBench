
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_bus {int * upstream; int * upstream_ops; } ;



__attribute__((used)) static void sfp_upstream_clear(struct sfp_bus *bus)
{
 bus->upstream_ops = ((void*)0);
 bus->upstream = ((void*)0);
}
