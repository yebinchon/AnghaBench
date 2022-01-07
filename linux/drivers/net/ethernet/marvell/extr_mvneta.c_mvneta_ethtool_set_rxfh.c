
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mvneta_port {int indir; scalar_t__ neta_armada3700; } ;


 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int MVNETA_RSS_LU_TABLE_SIZE ;
 int memcpy (int ,int const*,int ) ;
 int mvneta_config_rss (struct mvneta_port*) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvneta_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
       const u8 *key, const u8 hfunc)
{
 struct mvneta_port *pp = netdev_priv(dev);


 if (pp->neta_armada3700)
  return -EOPNOTSUPP;




 if (key ||
     (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
  return -EOPNOTSUPP;

 if (!indir)
  return 0;

 memcpy(pp->indir, indir, MVNETA_RSS_LU_TABLE_SIZE);

 return mvneta_config_rss(pp);
}
