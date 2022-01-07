
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int num_tx_queues; } ;
struct bcm_sysport_stats {char* stat_string; int type; } ;
struct bcm_sysport_priv {int is_lite; } ;
typedef int buf ;


 int BCM_SYSPORT_STATS_LEN ;
 int ETH_GSTRING_LEN ;

 struct bcm_sysport_stats* bcm_sysport_gstrings_stats ;
 int bcm_sysport_lite_stat_valid (int ) ;
 int memcpy (int *,char*,int) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void bcm_sysport_get_strings(struct net_device *dev,
        u32 stringset, u8 *data)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 const struct bcm_sysport_stats *s;
 char buf[128];
 int i, j;

 switch (stringset) {
 case 128:
  for (i = 0, j = 0; i < BCM_SYSPORT_STATS_LEN; i++) {
   s = &bcm_sysport_gstrings_stats[i];
   if (priv->is_lite &&
       !bcm_sysport_lite_stat_valid(s->type))
    continue;

   memcpy(data + j * ETH_GSTRING_LEN, s->stat_string,
          ETH_GSTRING_LEN);
   j++;
  }

  for (i = 0; i < dev->num_tx_queues; i++) {
   snprintf(buf, sizeof(buf), "txq%d_packets", i);
   memcpy(data + j * ETH_GSTRING_LEN, buf,
          ETH_GSTRING_LEN);
   j++;

   snprintf(buf, sizeof(buf), "txq%d_bytes", i);
   memcpy(data + j * ETH_GSTRING_LEN, buf,
          ETH_GSTRING_LEN);
   j++;
  }
  break;
 default:
  break;
 }
}
