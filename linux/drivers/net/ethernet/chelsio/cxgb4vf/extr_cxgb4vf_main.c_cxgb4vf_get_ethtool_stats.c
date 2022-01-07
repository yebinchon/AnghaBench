
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct t4vf_port_stats {int dummy; } ;
struct queue_port_stats {int dummy; } ;
struct port_info {int pidx; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct adapter {int dummy; } ;


 int collect_sge_port_stats (struct adapter*,struct port_info*,struct queue_port_stats*) ;
 int memset (int *,int ,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4vf_get_port_stats (struct adapter*,int ,struct t4vf_port_stats*) ;

__attribute__((used)) static void cxgb4vf_get_ethtool_stats(struct net_device *dev,
          struct ethtool_stats *stats,
          u64 *data)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adapter = pi->adapter;
 int err = t4vf_get_port_stats(adapter, pi->pidx,
          (struct t4vf_port_stats *)data);
 if (err)
  memset(data, 0, sizeof(struct t4vf_port_stats));

 data += sizeof(struct t4vf_port_stats) / sizeof(u64);
 collect_sge_port_stats(adapter, pi, (struct queue_port_stats *)data);
}
