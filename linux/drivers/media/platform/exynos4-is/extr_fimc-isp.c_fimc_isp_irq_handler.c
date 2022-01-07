
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** args; } ;
struct fimc_is {int irq_queue; TYPE_1__ i2h_cmd; } ;


 int FIMC_IS_INT_FRAME_DONE_ISP ;
 int MCUCTL_REG_ISSR (int) ;
 int fimc_is_fw_clear_irq1 (struct fimc_is*,int ) ;
 int fimc_isp_video_irq_handler (struct fimc_is*) ;
 void* mcuctl_read (struct fimc_is*,int ) ;
 int wake_up (int *) ;

void fimc_isp_irq_handler(struct fimc_is *is)
{
 is->i2h_cmd.args[0] = mcuctl_read(is, MCUCTL_REG_ISSR(20));
 is->i2h_cmd.args[1] = mcuctl_read(is, MCUCTL_REG_ISSR(21));

 fimc_is_fw_clear_irq1(is, FIMC_IS_INT_FRAME_DONE_ISP);
 fimc_isp_video_irq_handler(is);

 wake_up(&is->irq_queue);
}
