
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp_driver {int drv; } ;


 int driver_unregister (int *) ;

void mcp_driver_unregister(struct mcp_driver *mcpdrv)
{
 driver_unregister(&mcpdrv->drv);
}
