
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct m_can_classdev {int dummy; } ;


 int m_can_enable_all_interrupts (struct m_can_classdev*) ;
 int m_can_rx_handler (struct net_device*,int) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int m_can_rx_peripheral(struct net_device *dev)
{
 struct m_can_classdev *cdev = netdev_priv(dev);

 m_can_rx_handler(dev, 1);

 m_can_enable_all_interrupts(cdev);

 return 0;
}
