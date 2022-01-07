
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mask; } ;
struct fmdev {TYPE_1__ irq_info; } ;
typedef int payload ;


 int FM_HANDLE_INTMSK_CMD_RESP_IDX ;
 int INT_MASK_SET ;
 int REG_WR ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int *,int,int *) ;

__attribute__((used)) static void fm_irq_send_intmsk_cmd(struct fmdev *fmdev)
{
 u16 payload;


 payload = fmdev->irq_info.mask;

 if (!fm_send_cmd(fmdev, INT_MASK_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_HANDLE_INTMSK_CMD_RESP_IDX);
}
