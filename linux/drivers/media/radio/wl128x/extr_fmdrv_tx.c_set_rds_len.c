
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int RDS_CONFIG_DATA_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int*,int,int *,int *) ;

__attribute__((used)) static int set_rds_len(struct fmdev *fmdev, u8 type, u16 len)
{
 u16 payload;
 int ret;

 len |= type << 8;
 payload = len;
 ret = fmc_send_cmd(fmdev, RDS_CONFIG_DATA_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 return 0;
}
