
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mvneta_port {int indir; scalar_t__ neta_armada3700; } ;


 int EOPNOTSUPP ;
 int ETH_RSS_HASH_TOP ;
 int MVNETA_RSS_LU_TABLE_SIZE ;
 int memcpy (int *,int ,int ) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvneta_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
       u8 *hfunc)
{
 struct mvneta_port *pp = netdev_priv(dev);


 if (pp->neta_armada3700)
  return -EOPNOTSUPP;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (!indir)
  return 0;

 memcpy(indir, pp->indir, MVNETA_RSS_LU_TABLE_SIZE);

 return 0;
}
