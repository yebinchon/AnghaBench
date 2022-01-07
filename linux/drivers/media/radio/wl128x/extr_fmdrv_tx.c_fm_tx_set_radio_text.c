
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct fmdev {scalar_t__ curr_fmmode; } ;
typedef int payload ;


 int EPERM ;
 scalar_t__ FM_MODE_TX ;
 int RDS_DATA_ENB ;
 int REG_WR ;
 int fm_tx_set_rds_mode (struct fmdev*,int ) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int*,int,int *,int *) ;
 int set_rds_data_mode (struct fmdev*,int) ;
 int set_rds_len (struct fmdev*,int ,int ) ;
 int set_rds_text (struct fmdev*,int *) ;
 int strlen (int *) ;

int fm_tx_set_radio_text(struct fmdev *fmdev, u8 *rds_text, u8 rds_type)
{
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_TX)
  return -EPERM;

 fm_tx_set_rds_mode(fmdev, 0);


 set_rds_len(fmdev, rds_type, strlen(rds_text));


 set_rds_text(fmdev, rds_text);


 set_rds_data_mode(fmdev, 0x0);

 payload = 1;
 ret = fmc_send_cmd(fmdev, RDS_DATA_ENB, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
