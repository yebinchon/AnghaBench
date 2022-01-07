
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct m_can_classdev {TYPE_1__ can; } ;
struct device {int dummy; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int m_can_clk_start (struct m_can_classdev*) ;
 int m_can_init_ram (struct m_can_classdev*) ;
 int m_can_start (struct net_device*) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pinctrl_pm_select_default_state (struct device*) ;

int m_can_class_resume(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct m_can_classdev *cdev = netdev_priv(ndev);

 pinctrl_pm_select_default_state(dev);

 cdev->can.state = CAN_STATE_ERROR_ACTIVE;

 if (netif_running(ndev)) {
  int ret;

  ret = m_can_clk_start(cdev);
  if (ret)
   return ret;

  m_can_init_ram(cdev);
  m_can_start(ndev);
  netif_device_attach(ndev);
  netif_start_queue(ndev);
 }

 return 0;
}
