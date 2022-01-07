
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct m_can_classdev {int dummy; } ;


 int M_CAN_TXEFA ;
 int M_CAN_TXEFS ;
 int TXEFA_EFAI_MASK ;
 int TXEFA_EFAI_SHIFT ;
 int TXEFS_EFFL_MASK ;
 int TXEFS_EFFL_SHIFT ;
 int TXEFS_EFGI_MASK ;
 int TXEFS_EFGI_SHIFT ;
 unsigned int TX_EVENT_MM_MASK ;
 unsigned int TX_EVENT_MM_SHIFT ;
 scalar_t__ can_get_echo_skb (struct net_device*,unsigned int) ;
 int m_can_read (struct m_can_classdev*,int ) ;
 unsigned int m_can_txe_fifo_read (struct m_can_classdev*,int,int) ;
 int m_can_write (struct m_can_classdev*,int ,int) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void m_can_echo_tx_event(struct net_device *dev)
{
 u32 txe_count = 0;
 u32 m_can_txefs;
 u32 fgi = 0;
 int i = 0;
 unsigned int msg_mark;

 struct m_can_classdev *cdev = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;


 m_can_txefs = m_can_read(cdev, M_CAN_TXEFS);


 txe_count = (m_can_txefs & TXEFS_EFFL_MASK)
   >> TXEFS_EFFL_SHIFT;


 for (i = 0; i < txe_count; i++) {

  fgi = (m_can_read(cdev, M_CAN_TXEFS) & TXEFS_EFGI_MASK)
   >> TXEFS_EFGI_SHIFT;


  msg_mark = (m_can_txe_fifo_read(cdev, fgi, 4) &
       TX_EVENT_MM_MASK) >> TX_EVENT_MM_SHIFT;


  m_can_write(cdev, M_CAN_TXEFA, (TXEFA_EFAI_MASK &
      (fgi << TXEFA_EFAI_SHIFT)));


  stats->tx_bytes += can_get_echo_skb(dev, msg_mark);
  stats->tx_packets++;
 }
}
