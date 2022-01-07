
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int top_freq; int bot_freq; } ;
struct TYPE_4__ {TYPE_1__ region; } ;
struct fmdev {TYPE_2__ rx; } ;



int fm_rx_get_band_freq_range(struct fmdev *fmdev, u32 *bot_freq, u32 *top_freq)
{
 if (bot_freq != ((void*)0))
  *bot_freq = fmdev->rx.region.bot_freq;

 if (top_freq != ((void*)0))
  *top_freq = fmdev->rx.region.top_freq;

 return 0;
}
