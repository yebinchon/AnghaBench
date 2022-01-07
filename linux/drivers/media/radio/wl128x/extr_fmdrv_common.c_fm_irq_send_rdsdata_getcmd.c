
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int dummy; } ;


 int FM_RDS_HANDLE_RDS_GETCMD_RESP_IDX ;
 int FM_RX_RDS_FIFO_THRESHOLD ;
 int RDS_DATA_GET ;
 int REG_RD ;
 int fm_irq_timeout_stage (struct fmdev*,int ) ;
 int fm_send_cmd (struct fmdev*,int ,int ,int *,int,int *) ;

__attribute__((used)) static void fm_irq_send_rdsdata_getcmd(struct fmdev *fmdev)
{

 if (!fm_send_cmd(fmdev, RDS_DATA_GET, REG_RD, ((void*)0),
       (FM_RX_RDS_FIFO_THRESHOLD * 3), ((void*)0)))
  fm_irq_timeout_stage(fmdev, FM_RDS_HANDLE_RDS_GETCMD_RESP_IDX);
}
