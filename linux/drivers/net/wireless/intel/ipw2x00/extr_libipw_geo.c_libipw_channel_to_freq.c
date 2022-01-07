
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ bg_channels; scalar_t__ a_channels; } ;
struct libipw_device {TYPE_1__ geo; } ;
struct libipw_channel {int freq; int channel; } ;


 struct libipw_channel* libipw_get_channel (struct libipw_device*,int ) ;

u32 libipw_channel_to_freq(struct libipw_device * ieee, u8 channel)
{
 const struct libipw_channel * ch;



 if (ieee->geo.bg_channels == 0 && ieee->geo.a_channels == 0)
  return 0;

 ch = libipw_get_channel(ieee, channel);
 if (!ch->channel)
  return 0;
 return ch->freq;
}
