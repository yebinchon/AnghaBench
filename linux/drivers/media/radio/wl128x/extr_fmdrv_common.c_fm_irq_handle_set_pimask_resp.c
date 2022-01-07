
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int dummy; } ;


 int FM_AF_JUMP_SET_AF_FREQ_IDX ;
 int fm_irq_common_cmd_resp_helper (struct fmdev*,int ) ;

__attribute__((used)) static void fm_irq_handle_set_pimask_resp(struct fmdev *fmdev)
{
 fm_irq_common_cmd_resp_helper(fmdev, FM_AF_JUMP_SET_AF_FREQ_IDX);
}
