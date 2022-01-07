
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int DISPLAY_MODE ;
 int RDS_DATA_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static int set_rds_text(struct fmdev *fmdev, u8 *rds_text)
{
 u16 payload;
 int ret;

 ret = fmc_send_cmd(fmdev, RDS_DATA_SET, REG_WR, rds_text,
   strlen(rds_text), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 payload = (u16)0x1;
 ret = fmc_send_cmd(fmdev, DISPLAY_MODE, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
