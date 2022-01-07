
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_RSS_HASH_CRC32 ;
 int mvpp22_port_rss_ctx_indir_get (struct mvpp2_port*,int ,int *) ;
 int mvpp22_rss_is_supported () ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
      u8 *hfunc)
{
 struct mvpp2_port *port = netdev_priv(dev);
 int ret = 0;

 if (!mvpp22_rss_is_supported())
  return -EOPNOTSUPP;

 if (indir)
  ret = mvpp22_port_rss_ctx_indir_get(port, 0, indir);

 if (hfunc)
  *hfunc = ETH_RSS_HASH_CRC32;

 return ret;
}
