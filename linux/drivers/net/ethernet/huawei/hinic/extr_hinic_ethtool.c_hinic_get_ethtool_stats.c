
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct hinic_vport_stats {int member_0; } ;
struct hinic_phy_port_stats {int dummy; } ;
struct hinic_dev {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {int offset; int size; } ;


 size_t ARRAY_LEN (TYPE_1__*) ;
 int GFP_KERNEL ;
 int drv ;
 int get_drv_queue_stats (struct hinic_dev*,int *) ;
 TYPE_1__* hinic_function_stats ;
 int hinic_get_phy_port_stats (struct hinic_dev*,struct hinic_phy_port_stats*) ;
 int hinic_get_vport_stats (struct hinic_dev*,struct hinic_vport_stats*) ;
 TYPE_1__* hinic_port_stats ;
 int kfree (struct hinic_phy_port_stats*) ;
 struct hinic_phy_port_stats* kzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;

__attribute__((used)) static void hinic_get_ethtool_stats(struct net_device *netdev,
        struct ethtool_stats *stats, u64 *data)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 struct hinic_vport_stats vport_stats = {0};
 struct hinic_phy_port_stats *port_stats;
 u16 i = 0, j = 0;
 char *p;
 int err;

 err = hinic_get_vport_stats(nic_dev, &vport_stats);
 if (err)
  netif_err(nic_dev, drv, netdev,
     "Failed to get vport stats from firmware\n");

 for (j = 0; j < ARRAY_LEN(hinic_function_stats); j++, i++) {
  p = (char *)&vport_stats + hinic_function_stats[j].offset;
  data[i] = (hinic_function_stats[j].size ==
    sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }

 port_stats = kzalloc(sizeof(*port_stats), GFP_KERNEL);
 if (!port_stats) {
  memset(&data[i], 0,
         ARRAY_LEN(hinic_port_stats) * sizeof(*data));
  i += ARRAY_LEN(hinic_port_stats);
  goto get_drv_stats;
 }

 err = hinic_get_phy_port_stats(nic_dev, port_stats);
 if (err)
  netif_err(nic_dev, drv, netdev,
     "Failed to get port stats from firmware\n");

 for (j = 0; j < ARRAY_LEN(hinic_port_stats); j++, i++) {
  p = (char *)port_stats + hinic_port_stats[j].offset;
  data[i] = (hinic_port_stats[j].size ==
    sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }

 kfree(port_stats);

get_drv_stats:
 get_drv_queue_stats(nic_dev, data + i);
}
