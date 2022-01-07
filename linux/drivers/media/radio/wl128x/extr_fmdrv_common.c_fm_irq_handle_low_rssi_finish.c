
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int dummy; } ;


 int FM_SEND_INTMSK_CMD_IDX ;
 int fm_irq_call_stage (struct fmdev*,int ) ;

__attribute__((used)) static void fm_irq_handle_low_rssi_finish(struct fmdev *fmdev)
{
 fm_irq_call_stage(fmdev, FM_SEND_INTMSK_CMD_IDX);
}
