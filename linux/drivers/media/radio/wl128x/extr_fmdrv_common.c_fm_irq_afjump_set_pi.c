
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int picode; } ;
struct TYPE_4__ {TYPE_1__ stat_info; } ;
struct fmdev {TYPE_2__ rx; } ;
typedef int payload ;


 int FM_AF_JUMP_HANDLE_SETPI_RESP_IDX ;
 int RDS_PI_SET ;
 int REG_WR ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int *,int,int *) ;

__attribute__((used)) static void fm_irq_afjump_set_pi(struct fmdev *fmdev)
{
 u16 payload;


 payload = fmdev->rx.stat_info.picode;
 if (!fm_send_cmd(fmdev, RDS_PI_SET, REG_WR, &payload, sizeof(payload), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_AF_JUMP_HANDLE_SETPI_RESP_IDX);
}
