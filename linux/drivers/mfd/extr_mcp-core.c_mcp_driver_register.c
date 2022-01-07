
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct mcp_driver {TYPE_1__ drv; } ;


 int driver_register (TYPE_1__*) ;
 int mcp_bus_type ;

int mcp_driver_register(struct mcp_driver *mcpdrv)
{
 mcpdrv->drv.bus = &mcp_bus_type;
 return driver_register(&mcpdrv->drv);
}
