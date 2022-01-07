
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int bot_freq; } ;
struct TYPE_5__ {int* af_cache; } ;
struct TYPE_6__ {size_t afjump_idx; TYPE_1__ region; TYPE_2__ stat_info; } ;
struct fmdev {TYPE_3__ rx; } ;
typedef int payload ;


 int AF_FREQ_SET ;
 int FM_AF_JUMP_HANDLE_SET_AFFREQ_RESP_IDX ;
 int FM_FREQ_MUL ;
 int REG_WR ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int*,int,int *) ;
 int fmdbg (char*,int) ;

__attribute__((used)) static void fm_irq_afjump_setfreq(struct fmdev *fmdev)
{
 u16 frq_index;
 u16 payload;

 fmdbg("Switch to %d KHz\n", fmdev->rx.stat_info.af_cache[fmdev->rx.afjump_idx]);
 frq_index = (fmdev->rx.stat_info.af_cache[fmdev->rx.afjump_idx] -
      fmdev->rx.region.bot_freq) / FM_FREQ_MUL;

 payload = frq_index;
 if (!fm_send_cmd(fmdev, AF_FREQ_SET, REG_WR, &payload, sizeof(payload), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_AF_JUMP_HANDLE_SET_AFFREQ_RESP_IDX);
}
