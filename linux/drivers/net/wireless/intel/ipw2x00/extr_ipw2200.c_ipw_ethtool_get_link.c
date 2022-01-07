
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ipw_priv {int status; } ;


 int STATUS_ASSOCIATED ;
 struct ipw_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static u32 ipw_ethtool_get_link(struct net_device *dev)
{
 struct ipw_priv *priv = libipw_priv(dev);
 return (priv->status & STATUS_ASSOCIATED) != 0;
}
