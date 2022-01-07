
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ksz_port {int first_port; int mib_port_cnt; } ;
struct ksz_hw {int mib_cnt; TYPE_1__* port_mib; } ;
struct ethtool_stats {int n_stats; } ;
struct dev_priv {struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {TYPE_2__* counter; int mib_read; int lock; struct ksz_hw hw; } ;
struct TYPE_4__ {int read; int counter; } ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ cnt_ptr; } ;


 int HZ ;
 int SWITCH_PORT_NUM ;
 int TOTAL_PORT_COUNTER_NUM ;
 int get_mib_counters (struct ksz_hw*,int,int,int *) ;
 scalar_t__ media_connected ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static void netdev_get_ethtool_stats(struct net_device *dev,
 struct ethtool_stats *stats, u64 *data)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;
 struct ksz_port *port = &priv->port;
 int n_stats = stats->n_stats;
 int i;
 int n;
 int p;
 int rc;
 u64 counter[TOTAL_PORT_COUNTER_NUM];

 mutex_lock(&hw_priv->lock);
 n = SWITCH_PORT_NUM;
 for (i = 0, p = port->first_port; i < port->mib_port_cnt; i++, p++) {
  if (media_connected == hw->port_mib[p].state) {
   hw_priv->counter[p].read = 1;


   if (n == SWITCH_PORT_NUM)
    n = p;
  }
 }
 mutex_unlock(&hw_priv->lock);

 if (n < SWITCH_PORT_NUM)
  schedule_work(&hw_priv->mib_read);

 if (1 == port->mib_port_cnt && n < SWITCH_PORT_NUM) {
  p = n;
  rc = wait_event_interruptible_timeout(
   hw_priv->counter[p].counter,
   2 == hw_priv->counter[p].read,
   HZ * 1);
 } else
  for (i = 0, p = n; i < port->mib_port_cnt - n; i++, p++) {
   if (0 == i) {
    rc = wait_event_interruptible_timeout(
     hw_priv->counter[p].counter,
     2 == hw_priv->counter[p].read,
     HZ * 2);
   } else if (hw->port_mib[p].cnt_ptr) {
    rc = wait_event_interruptible_timeout(
     hw_priv->counter[p].counter,
     2 == hw_priv->counter[p].read,
     HZ * 1);
   }
  }

 get_mib_counters(hw, port->first_port, port->mib_port_cnt, counter);
 n = hw->mib_cnt;
 if (n > n_stats)
  n = n_stats;
 n_stats -= n;
 for (i = 0; i < n; i++)
  *data++ = counter[i];
}
