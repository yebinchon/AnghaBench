
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct myri10ge_priv {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EINVAL ;


 int myri10ge_led (struct myri10ge_priv*,int) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
myri10ge_phys_id(struct net_device *netdev, enum ethtool_phys_id_state state)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 int rc;

 switch (state) {
 case 129:
  rc = myri10ge_led(mgp, 1);
  break;

 case 128:
  rc = myri10ge_led(mgp, 0);
  break;

 default:
  rc = -EINVAL;
 }

 return rc;
}
