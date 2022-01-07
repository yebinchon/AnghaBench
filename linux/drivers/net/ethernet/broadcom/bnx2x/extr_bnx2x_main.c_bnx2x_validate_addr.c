
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int EADDRNOTAVAIL ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int bnx2x_sample_bulletin (struct bnx2x*) ;
 int is_valid_ether_addr (int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_validate_addr(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);


 if (IS_VF(bp))
  bnx2x_sample_bulletin(bp);

 if (!is_valid_ether_addr(dev->dev_addr)) {
  BNX2X_ERR("Non-valid Ethernet address\n");
  return -EADDRNOTAVAIL;
 }
 return 0;
}
