
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;





 int EOPNOTSUPP ;
 int softing_startstop (struct net_device*,int) ;

__attribute__((used)) static int softing_candev_set_mode(struct net_device *ndev, enum can_mode mode)
{
 int ret;

 switch (mode) {
 case 129:

  ret = softing_startstop(ndev, 1);
  return ret;
 case 128:
 case 130:
  return -EOPNOTSUPP;
 }
 return 0;
}
