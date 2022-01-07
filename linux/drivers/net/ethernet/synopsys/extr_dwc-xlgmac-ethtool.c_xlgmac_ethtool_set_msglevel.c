
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xlgmac_ethtool_set_msglevel(struct net_device *netdev,
     u32 msglevel)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);

 pdata->msg_enable = msglevel;
}
