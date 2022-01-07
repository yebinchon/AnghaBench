
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* platform_data; } ;
struct mcp {TYPE_1__ attached_device; } ;


 int dev_set_name (TYPE_1__*,char*) ;
 int device_add (TYPE_1__*) ;

int mcp_host_add(struct mcp *mcp, void *pdata)
{
 mcp->attached_device.platform_data = pdata;
 dev_set_name(&mcp->attached_device, "mcp0");
 return device_add(&mcp->attached_device);
}
