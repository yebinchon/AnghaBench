
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct m_can_classdev {TYPE_1__ can; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int m_can_chip_config (struct net_device*) ;
 int m_can_enable_all_interrupts (struct m_can_classdev*) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void m_can_start(struct net_device *dev)
{
 struct m_can_classdev *cdev = netdev_priv(dev);


 m_can_chip_config(dev);

 cdev->can.state = CAN_STATE_ERROR_ACTIVE;

 m_can_enable_all_interrupts(cdev);
}
