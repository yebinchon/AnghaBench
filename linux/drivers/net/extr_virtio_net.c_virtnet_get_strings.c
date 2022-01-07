
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct virtnet_info {unsigned int curr_queue_pairs; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {char* desc; } ;
struct TYPE_3__ {char* desc; } ;


 int ETH_GSTRING_LEN ;

 unsigned int VIRTNET_RQ_STATS_LEN ;
 unsigned int VIRTNET_SQ_STATS_LEN ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int snprintf (char*,int ,char*,unsigned int,char*) ;
 TYPE_2__* virtnet_rq_stats_desc ;
 TYPE_1__* virtnet_sq_stats_desc ;

__attribute__((used)) static void virtnet_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 struct virtnet_info *vi = netdev_priv(dev);
 char *p = (char *)data;
 unsigned int i, j;

 switch (stringset) {
 case 128:
  for (i = 0; i < vi->curr_queue_pairs; i++) {
   for (j = 0; j < VIRTNET_RQ_STATS_LEN; j++) {
    snprintf(p, ETH_GSTRING_LEN, "rx_queue_%u_%s",
      i, virtnet_rq_stats_desc[j].desc);
    p += ETH_GSTRING_LEN;
   }
  }

  for (i = 0; i < vi->curr_queue_pairs; i++) {
   for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++) {
    snprintf(p, ETH_GSTRING_LEN, "tx_queue_%u_%s",
      i, virtnet_sq_stats_desc[j].desc);
    p += ETH_GSTRING_LEN;
   }
  }
  break;
 }
}
