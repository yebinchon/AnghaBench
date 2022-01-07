
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int DI_SET ;
 int PI_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;

__attribute__((used)) static int set_rds_data_mode(struct fmdev *fmdev, u8 mode)
{
 u16 payload;
 int ret;


 payload = (u16)0xcafe;
 ret = fmc_send_cmd(fmdev, PI_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 payload = (u16)0xa;
 ret = fmc_send_cmd(fmdev, DI_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 return 0;
}
