
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iavf_adapter {int rss_lut_size; } ;


 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 iavf_get_rxfh_indir_size(struct net_device *netdev)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 return adapter->rss_lut_size;
}
