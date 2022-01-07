
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct port_info {unsigned int rss_size; int * rss; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CXGB4_FULL_INIT_DONE ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int cxgb4_write_rss (struct port_info*,int *) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int set_rss_table(struct net_device *dev, const u32 *p, const u8 *key,
    const u8 hfunc)
{
 unsigned int i;
 struct port_info *pi = netdev_priv(dev);




 if (key ||
     (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
  return -EOPNOTSUPP;
 if (!p)
  return 0;


 if (pi->adapter->flags & CXGB4_FULL_INIT_DONE) {
  for (i = 0; i < pi->rss_size; i++)
   pi->rss[i] = p[i];

  return cxgb4_write_rss(pi, pi->rss);
 }

 return -EPERM;
}
