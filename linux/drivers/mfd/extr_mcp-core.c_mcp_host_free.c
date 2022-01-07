
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp {int attached_device; } ;


 int put_device (int *) ;

void mcp_host_free(struct mcp *mcp)
{
 put_device(&mcp->attached_device);
}
