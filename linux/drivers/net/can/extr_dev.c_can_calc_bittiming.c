
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_bittiming_const {int dummy; } ;
struct can_bittiming {int dummy; } ;


 int EINVAL ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static int can_calc_bittiming(struct net_device *dev, struct can_bittiming *bt,
         const struct can_bittiming_const *btc)
{
 netdev_err(dev, "bit-timing calculation not available\n");
 return -EINVAL;
}
