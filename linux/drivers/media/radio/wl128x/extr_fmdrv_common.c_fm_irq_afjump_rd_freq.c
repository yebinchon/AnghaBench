
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int FM_AF_JUMP_RD_FREQ_RESP_IDX ;
 int FREQ_SET ;
 int REG_RD ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int *,int,int *) ;

__attribute__((used)) static void fm_irq_afjump_rd_freq(struct fmdev *fmdev)
{
 u16 payload;

 if (!fm_send_cmd(fmdev, FREQ_SET, REG_RD, ((void*)0), sizeof(payload), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_AF_JUMP_RD_FREQ_RESP_IDX);
}
