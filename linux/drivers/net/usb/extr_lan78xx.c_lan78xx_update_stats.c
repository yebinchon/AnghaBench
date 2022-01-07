
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct lan78xx_statstage {int dummy; } ;
struct TYPE_2__ {int access_lock; int curr_stat; int rollover_max; int rollover_count; } ;
struct lan78xx_net {int intf; TYPE_1__ stats; } ;
typedef int lan78xx_stats ;


 int lan78xx_check_stat_rollover (struct lan78xx_net*,struct lan78xx_statstage*) ;
 scalar_t__ lan78xx_read_stats (struct lan78xx_net*,struct lan78xx_statstage*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void lan78xx_update_stats(struct lan78xx_net *dev)
{
 u32 *p, *count, *max;
 u64 *data;
 int i;
 struct lan78xx_statstage lan78xx_stats;

 if (usb_autopm_get_interface(dev->intf) < 0)
  return;

 p = (u32 *)&lan78xx_stats;
 count = (u32 *)&dev->stats.rollover_count;
 max = (u32 *)&dev->stats.rollover_max;
 data = (u64 *)&dev->stats.curr_stat;

 mutex_lock(&dev->stats.access_lock);

 if (lan78xx_read_stats(dev, &lan78xx_stats) > 0)
  lan78xx_check_stat_rollover(dev, &lan78xx_stats);

 for (i = 0; i < (sizeof(lan78xx_stats) / (sizeof(u32))); i++)
  data[i] = (u64)p[i] + ((u64)count[i] * ((u64)max[i] + 1));

 mutex_unlock(&dev->stats.access_lock);

 usb_autopm_put_interface(dev->intf);
}
