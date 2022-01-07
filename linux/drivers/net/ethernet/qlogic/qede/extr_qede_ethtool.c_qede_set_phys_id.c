
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* set_led ) (int ,int ) ;} ;






 int QED_LED_MODE_OFF ;
 int QED_LED_MODE_ON ;
 int QED_LED_MODE_RESTORE ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int qede_set_phys_id(struct net_device *dev,
       enum ethtool_phys_id_state state)
{
 struct qede_dev *edev = netdev_priv(dev);
 u8 led_state = 0;

 switch (state) {
 case 131:
  return 1;

 case 128:
  led_state = QED_LED_MODE_ON;
  break;

 case 129:
  led_state = QED_LED_MODE_OFF;
  break;

 case 130:
  led_state = QED_LED_MODE_RESTORE;
  break;
 }

 edev->ops->common->set_led(edev->cdev, led_state);

 return 0;
}
