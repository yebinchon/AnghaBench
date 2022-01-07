
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int chanl_space; } ;
struct TYPE_4__ {TYPE_1__ region; } ;
struct fmdev {TYPE_2__ rx; } ;
typedef int payload ;


 int CHANL_BW_SET ;
 int FM_CHANNEL_SPACING_100KHZ ;
 int FM_CHANNEL_SPACING_200KHZ ;
 int FM_CHANNEL_SPACING_50KHZ ;
 int FM_FREQ_MUL ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int*,int,int *,int *) ;

__attribute__((used)) static int fm_rx_set_channel_spacing(struct fmdev *fmdev, u32 spacing)
{
 u16 payload;
 int ret;

 if (spacing > 0 && spacing <= 50000)
  spacing = FM_CHANNEL_SPACING_50KHZ;
 else if (spacing > 50000 && spacing <= 100000)
  spacing = FM_CHANNEL_SPACING_100KHZ;
 else
  spacing = FM_CHANNEL_SPACING_200KHZ;


 payload = spacing;
 ret = fmc_send_cmd(fmdev, CHANL_BW_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->rx.region.chanl_space = spacing * FM_FREQ_MUL;

 return ret;
}
