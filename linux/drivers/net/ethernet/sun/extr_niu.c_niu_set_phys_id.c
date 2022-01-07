
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int orig_led_state; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EAGAIN ;




 struct niu* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int niu_force_led (struct niu*,int) ;
 int niu_led_state_restore (struct niu*,int ) ;
 int niu_led_state_save (struct niu*) ;

__attribute__((used)) static int niu_set_phys_id(struct net_device *dev,
      enum ethtool_phys_id_state state)

{
 struct niu *np = netdev_priv(dev);

 if (!netif_running(dev))
  return -EAGAIN;

 switch (state) {
 case 131:
  np->orig_led_state = niu_led_state_save(np);
  return 1;

 case 128:
  niu_force_led(np, 1);
  break;

 case 129:
  niu_force_led(np, 0);
  break;

 case 130:
  niu_led_state_restore(np, np->orig_led_state);
 }

 return 0;
}
