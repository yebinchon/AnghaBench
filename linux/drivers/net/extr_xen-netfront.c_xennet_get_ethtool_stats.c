
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
typedef int atomic_t ;
struct TYPE_3__ {int offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int atomic_read (int *) ;
 void* netdev_priv (struct net_device*) ;
 TYPE_1__* xennet_stats ;

__attribute__((used)) static void xennet_get_ethtool_stats(struct net_device *dev,
         struct ethtool_stats *stats, u64 * data)
{
 void *np = netdev_priv(dev);
 int i;

 for (i = 0; i < ARRAY_SIZE(xennet_stats); i++)
  data[i] = atomic_read((atomic_t *)(np + xennet_stats[i].offset));
}
