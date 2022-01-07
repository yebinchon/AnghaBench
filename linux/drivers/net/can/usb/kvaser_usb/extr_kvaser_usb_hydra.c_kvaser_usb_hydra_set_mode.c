
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;

__attribute__((used)) static int kvaser_usb_hydra_set_mode(struct net_device *netdev,
         enum can_mode mode)
{
 int err = 0;

 switch (mode) {
 case 128:

  break;
 default:
  err = -EOPNOTSUPP;
 }

 return err;
}
