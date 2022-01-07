
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int flag ;


 int FLAG_GET ;
 int FM_HANDLE_FLAG_GETCMD_RESP_IDX ;
 int REG_RD ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int *,int,int *) ;

__attribute__((used)) static void fm_irq_send_flag_getcmd(struct fmdev *fmdev)
{
 u16 flag;


 if (!fm_send_cmd(fmdev, FLAG_GET, REG_RD, ((void*)0), sizeof(flag), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_HANDLE_FLAG_GETCMD_RESP_IDX);
}
