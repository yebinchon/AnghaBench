
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rtl8169_private {struct rtl8169_counters* counters; } ;
struct rtl8169_counters {int tx_underun; int tx_aborted; int rx_multicast; int rx_broadcast; int rx_unicast; int tx_multi_collision; int tx_one_collision; int align_errors; int rx_missed; int rx_errors; int tx_errors; int rx_packets; int tx_packets; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct device {int dummy; } ;


 int ASSERT_RTNL () ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 scalar_t__ pm_runtime_active (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int rtl8169_update_counters (struct rtl8169_private*) ;
 struct device* tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_get_ethtool_stats(struct net_device *dev,
          struct ethtool_stats *stats, u64 *data)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct device *d = tp_to_dev(tp);
 struct rtl8169_counters *counters = tp->counters;

 ASSERT_RTNL();

 pm_runtime_get_noresume(d);

 if (pm_runtime_active(d))
  rtl8169_update_counters(tp);

 pm_runtime_put_noidle(d);

 data[0] = le64_to_cpu(counters->tx_packets);
 data[1] = le64_to_cpu(counters->rx_packets);
 data[2] = le64_to_cpu(counters->tx_errors);
 data[3] = le32_to_cpu(counters->rx_errors);
 data[4] = le16_to_cpu(counters->rx_missed);
 data[5] = le16_to_cpu(counters->align_errors);
 data[6] = le32_to_cpu(counters->tx_one_collision);
 data[7] = le32_to_cpu(counters->tx_multi_collision);
 data[8] = le64_to_cpu(counters->rx_unicast);
 data[9] = le64_to_cpu(counters->rx_broadcast);
 data[10] = le32_to_cpu(counters->rx_multicast);
 data[11] = le16_to_cpu(counters->tx_aborted);
 data[12] = le16_to_cpu(counters->tx_underun);
}
