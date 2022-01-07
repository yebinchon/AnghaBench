
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct m_can_classdev {int dummy; } ;


 int CAN_LED_EVENT_RX ;
 int M_CAN_RXF0S ;
 int RXFS_FFL_MASK ;
 int RXFS_RFL ;
 int can_led_event (struct net_device*,int ) ;
 int m_can_read (struct m_can_classdev*,int ) ;
 int m_can_read_fifo (struct net_device*,int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;

__attribute__((used)) static int m_can_do_rx_poll(struct net_device *dev, int quota)
{
 struct m_can_classdev *cdev = netdev_priv(dev);
 u32 pkts = 0;
 u32 rxfs;

 rxfs = m_can_read(cdev, M_CAN_RXF0S);
 if (!(rxfs & RXFS_FFL_MASK)) {
  netdev_dbg(dev, "no messages in fifo0\n");
  return 0;
 }

 while ((rxfs & RXFS_FFL_MASK) && (quota > 0)) {
  if (rxfs & RXFS_RFL)
   netdev_warn(dev, "Rx FIFO 0 Message Lost\n");

  m_can_read_fifo(dev, rxfs);

  quota--;
  pkts++;
  rxfs = m_can_read(cdev, M_CAN_RXF0S);
 }

 if (pkts)
  can_led_event(dev, CAN_LED_EVENT_RX);

 return pkts;
}
