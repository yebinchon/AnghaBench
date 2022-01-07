
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int FM_AF_JUMP_ENABLE_INT_RESP_IDX ;
 int FM_FR_EVENT ;
 int INT_MASK_SET ;
 int REG_WR ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int *,int,int *) ;

__attribute__((used)) static void fm_irq_afjump_enableint(struct fmdev *fmdev)
{
 u16 payload;


 payload = FM_FR_EVENT;
 if (!fm_send_cmd(fmdev, INT_MASK_SET, REG_WR, &payload, sizeof(payload), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_AF_JUMP_ENABLE_INT_RESP_IDX);
}
