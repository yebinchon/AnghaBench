
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgbe_prv_data {int rss_table; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 xgbe_get_rxfh_indir_size(struct net_device *netdev)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 return ARRAY_SIZE(pdata->rss_table);
}
