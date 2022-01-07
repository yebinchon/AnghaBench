
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flag; int mask; int stage; } ;
struct TYPE_4__ {scalar_t__ afcache_size; } ;
struct TYPE_5__ {scalar_t__ af_mode; scalar_t__ freq; scalar_t__ freq_before_jump; scalar_t__ afjump_idx; TYPE_1__ stat_info; } ;
struct fmdev {TYPE_3__ irq_info; TYPE_2__ rx; } ;


 int FM_AF_JUMP_SETPI_IDX ;
 int FM_LEV_EVENT ;
 scalar_t__ FM_RX_RDS_AF_SWITCH_MODE_ON ;
 int FM_SEND_INTMSK_CMD_IDX ;
 scalar_t__ FM_UNDEFINED_FREQ ;
 int fm_irq_call (struct fmdev*) ;
 int fmdbg (char*) ;

__attribute__((used)) static void fm_irq_handle_low_rssi_start(struct fmdev *fmdev)
{
 if ((fmdev->rx.af_mode == FM_RX_RDS_AF_SWITCH_MODE_ON) &&
     (fmdev->irq_info.flag & FM_LEV_EVENT & fmdev->irq_info.mask) &&
     (fmdev->rx.freq != FM_UNDEFINED_FREQ) &&
     (fmdev->rx.stat_info.afcache_size != 0)) {
  fmdbg("irq: rssi level has fallen below threshold level\n");


  fmdev->irq_info.mask &= ~FM_LEV_EVENT;

  fmdev->rx.afjump_idx = 0;
  fmdev->rx.freq_before_jump = fmdev->rx.freq;
  fmdev->irq_info.stage = FM_AF_JUMP_SETPI_IDX;
 } else {

  fmdev->irq_info.stage = FM_SEND_INTMSK_CMD_IDX;
 }

 fm_irq_call(fmdev);
}
