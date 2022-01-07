
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__* ind_table; } ;
struct bnx2x {scalar_t__ state; TYPE_2__* fp; TYPE_1__ rss_conf_obj; } ;
struct TYPE_4__ {scalar_t__ const cl_id; } ;


 scalar_t__ BNX2X_STATE_OPEN ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 size_t T_ETH_INDIRECTION_TABLE_SIZE ;
 int bnx2x_config_rss_eth (struct bnx2x*,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_rxfh(struct net_device *dev, const u32 *indir,
     const u8 *key, const u8 hfunc)
{
 struct bnx2x *bp = netdev_priv(dev);
 size_t i;




 if (key ||
     (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
  return -EOPNOTSUPP;

 if (!indir)
  return 0;

 for (i = 0; i < T_ETH_INDIRECTION_TABLE_SIZE; i++) {
  bp->rss_conf_obj.ind_table[i] = indir[i] + bp->fp->cl_id;
 }

 if (bp->state == BNX2X_STATE_OPEN)
  return bnx2x_config_rss_eth(bp, 0);

 return 0;
}
