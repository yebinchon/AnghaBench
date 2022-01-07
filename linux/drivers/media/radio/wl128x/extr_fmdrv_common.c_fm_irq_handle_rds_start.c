
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int mask; int stage; } ;
struct fmdev {TYPE_1__ irq_info; } ;


 int FM_HW_TUNE_OP_ENDED_IDX ;
 int FM_RDS_EVENT ;
 int FM_RDS_SEND_RDS_GETCMD_IDX ;
 int fm_irq_call (struct fmdev*) ;
 int fmdbg (char*) ;

__attribute__((used)) static void fm_irq_handle_rds_start(struct fmdev *fmdev)
{
 if (fmdev->irq_info.flag & FM_RDS_EVENT & fmdev->irq_info.mask) {
  fmdbg("irq: rds threshold reached\n");
  fmdev->irq_info.stage = FM_RDS_SEND_RDS_GETCMD_IDX;
 } else {

  fmdev->irq_info.stage = FM_HW_TUNE_OP_ENDED_IDX;
 }

 fm_irq_call(fmdev);
}
