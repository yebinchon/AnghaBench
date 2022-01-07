
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc9420_pdata {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct smsc9420_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void smsc9420_ethtool_set_msglevel(struct net_device *netdev, u32 data)
{
 struct smsc9420_pdata *pd = netdev_priv(netdev);
 pd->msg_enable = data;
}
