
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct queue_port_stats {int dummy; } ;
struct port_stats {int dummy; } ;
struct port_info {scalar_t__ port_id; int stats_base; int tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct lb_port_stats {int octets; } ;
struct ethtool_stats {int dummy; } ;
struct adapter_stats {int dummy; } ;
struct adapter {int dummy; } ;
typedef int s ;


 int ARRAY_SIZE (int ) ;
 int collect_adapter_stats (struct adapter*,struct adapter_stats*) ;
 int collect_sge_port_stats (struct adapter*,struct port_info*,struct queue_port_stats*) ;
 int loopback_stats_strings ;
 int memset (struct lb_port_stats*,int ,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_get_lb_stats (struct adapter*,scalar_t__,struct lb_port_stats*) ;
 int t4_get_port_stats_offset (struct adapter*,int ,struct port_stats*,int *) ;

__attribute__((used)) static void get_stats(struct net_device *dev, struct ethtool_stats *stats,
        u64 *data)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 struct lb_port_stats s;
 int i;
 u64 *p0;

 t4_get_port_stats_offset(adapter, pi->tx_chan,
     (struct port_stats *)data,
     &pi->stats_base);

 data += sizeof(struct port_stats) / sizeof(u64);
 collect_sge_port_stats(adapter, pi, (struct queue_port_stats *)data);
 data += sizeof(struct queue_port_stats) / sizeof(u64);
 collect_adapter_stats(adapter, (struct adapter_stats *)data);
 data += sizeof(struct adapter_stats) / sizeof(u64);

 *data++ = (u64)pi->port_id;
 memset(&s, 0, sizeof(s));
 t4_get_lb_stats(adapter, pi->port_id, &s);

 p0 = &s.octets;
 for (i = 0; i < ARRAY_SIZE(loopback_stats_strings) - 1; i++)
  *data++ = (unsigned long long)*p0++;
}
