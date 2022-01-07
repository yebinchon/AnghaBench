
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {char* name; } ;
struct can_priv {int rxtx_led_trig; int rx_led_trig; int tx_led_trig; } ;
typedef int name ;


 int CAN_LED_NAME_SZ ;
 unsigned long NETDEV_CHANGENAME ;
 int NOTIFY_DONE ;
 int led_trigger_rename_static (char*,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct can_priv* safe_candev_priv (struct net_device*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int can_led_notifier(struct notifier_block *nb, unsigned long msg,
       void *ptr)
{
 struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
 struct can_priv *priv = safe_candev_priv(netdev);
 char name[CAN_LED_NAME_SZ];

 if (!priv)
  return NOTIFY_DONE;

 if (!priv->tx_led_trig || !priv->rx_led_trig || !priv->rxtx_led_trig)
  return NOTIFY_DONE;

 if (msg == NETDEV_CHANGENAME) {
  snprintf(name, sizeof(name), "%s-tx", netdev->name);
  led_trigger_rename_static(name, priv->tx_led_trig);

  snprintf(name, sizeof(name), "%s-rx", netdev->name);
  led_trigger_rename_static(name, priv->rx_led_trig);

  snprintf(name, sizeof(name), "%s-rxtx", netdev->name);
  led_trigger_rename_static(name, priv->rxtx_led_trig);
 }

 return NOTIFY_DONE;
}
