
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp {int attached_device; } ;


 int device_del (int *) ;

void mcp_host_del(struct mcp *mcp)
{
 device_del(&mcp->attached_device);
}
