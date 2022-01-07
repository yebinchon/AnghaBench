
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned int echo_skb_max; int * echo_skb; } ;
struct m_can_classdev {TYPE_1__ can; } ;


 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int m_can_next_echo_skb_occupied(struct net_device *dev, int putidx)
{
 struct m_can_classdev *cdev = netdev_priv(dev);

 unsigned int wrap = cdev->can.echo_skb_max;
 int next_idx;


 next_idx = (++putidx >= wrap ? 0 : putidx);


 return !!cdev->can.echo_skb[next_idx];
}
