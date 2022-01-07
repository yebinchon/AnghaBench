
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;


 int UNLOAD_CLOSE ;
 int bnx2x_nic_unload (struct bnx2x*,int ,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_close(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);


 bnx2x_nic_unload(bp, UNLOAD_CLOSE, 0);

 return 0;
}
