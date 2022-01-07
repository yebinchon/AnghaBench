
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int mask; } ;
struct fmdev {TYPE_1__ irq_info; } ;


 int FM_MAL_EVENT ;
 int FM_RDS_START_IDX ;
 int fm_irq_call_stage (struct fmdev*,int ) ;
 int fmerr (char*) ;

__attribute__((used)) static void fm_irq_handle_hw_malfunction(struct fmdev *fmdev)
{
 if (fmdev->irq_info.flag & FM_MAL_EVENT & fmdev->irq_info.mask)
  fmerr("irq: HW MAL int received - do nothing\n");


 fm_irq_call_stage(fmdev, FM_RDS_START_IDX);
}
