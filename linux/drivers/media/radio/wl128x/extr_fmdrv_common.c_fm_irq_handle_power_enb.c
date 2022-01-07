
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;
struct fmdev {int maintask_comp; TYPE_1__ irq_info; } ;


 int FM_LOW_RSSI_START_IDX ;
 int FM_POW_ENB_EVENT ;
 int complete (int *) ;
 int fm_irq_call_stage (struct fmdev*,int ) ;
 int fmdbg (char*) ;

__attribute__((used)) static void fm_irq_handle_power_enb(struct fmdev *fmdev)
{
 if (fmdev->irq_info.flag & FM_POW_ENB_EVENT) {
  fmdbg("irq: Power Enabled/Disabled\n");
  complete(&fmdev->maintask_comp);
 }

 fm_irq_call_stage(fmdev, FM_LOW_RSSI_START_IDX);
}
