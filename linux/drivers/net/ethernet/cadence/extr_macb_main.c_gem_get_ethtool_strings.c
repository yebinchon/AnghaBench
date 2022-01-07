
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct macb_queue {int dummy; } ;
struct macb {unsigned int num_queues; struct macb_queue* queues; } ;
struct TYPE_4__ {char* stat_string; } ;
struct TYPE_3__ {char* stat_string; } ;


 int ETH_GSTRING_LEN ;

 unsigned int GEM_STATS_LEN ;
 unsigned int QUEUE_STATS_LEN ;
 TYPE_2__* gem_statistics ;
 int memcpy (int *,char*,int) ;
 struct macb* netdev_priv (struct net_device*) ;
 TYPE_1__* queue_statistics ;
 int snprintf (char*,int,char*,unsigned int,char*) ;

__attribute__((used)) static void gem_get_ethtool_strings(struct net_device *dev, u32 sset, u8 *p)
{
 char stat_string[ETH_GSTRING_LEN];
 struct macb *bp = netdev_priv(dev);
 struct macb_queue *queue;
 unsigned int i;
 unsigned int q;

 switch (sset) {
 case 128:
  for (i = 0; i < GEM_STATS_LEN; i++, p += ETH_GSTRING_LEN)
   memcpy(p, gem_statistics[i].stat_string,
          ETH_GSTRING_LEN);

  for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
   for (i = 0; i < QUEUE_STATS_LEN; i++, p += ETH_GSTRING_LEN) {
    snprintf(stat_string, ETH_GSTRING_LEN, "q%d_%s",
      q, queue_statistics[i].stat_string);
    memcpy(p, stat_string, ETH_GSTRING_LEN);
   }
  }
  break;
 }
}
