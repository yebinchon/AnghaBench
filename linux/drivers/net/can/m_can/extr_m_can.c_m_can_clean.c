
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct m_can_classdev {int version; int * tx_skb; int net; } ;


 int M_CAN_TXFQS ;
 int TXFQS_TFQPI_MASK ;
 int TXFQS_TFQPI_SHIFT ;
 int can_free_echo_skb (int ,int) ;
 int m_can_read (struct m_can_classdev*,int ) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void m_can_clean(struct net_device *net)
{
 struct m_can_classdev *cdev = netdev_priv(net);

 if (cdev->tx_skb) {
  int putidx = 0;

  net->stats.tx_errors++;
  if (cdev->version > 30)
   putidx = ((m_can_read(cdev, M_CAN_TXFQS) &
       TXFQS_TFQPI_MASK) >> TXFQS_TFQPI_SHIFT);

  can_free_echo_skb(cdev->net, putidx);
  cdev->tx_skb = ((void*)0);
 }
}
