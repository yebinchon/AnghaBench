
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int XPC_NET_CHANNEL ;
 int dev_dbg (int ,char*,int ) ;
 int xpc_disconnect (int ) ;
 int xpnet ;

__attribute__((used)) static int
xpnet_dev_stop(struct net_device *dev)
{
 xpc_disconnect(XPC_NET_CHANNEL);

 dev_dbg(xpnet, "ifconfig down of %s; XPC disconnected\n", dev->name);

 return 0;
}
