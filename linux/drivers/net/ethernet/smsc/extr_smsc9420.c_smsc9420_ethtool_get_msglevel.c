
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc9420_pdata {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct smsc9420_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 smsc9420_ethtool_get_msglevel(struct net_device *netdev)
{
 struct smsc9420_pdata *pd = netdev_priv(netdev);
 return pd->msg_enable;
}
