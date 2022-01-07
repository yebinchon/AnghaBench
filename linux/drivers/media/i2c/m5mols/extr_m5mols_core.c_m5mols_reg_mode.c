
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int M5MOLS_MODE_CHANGE_TIMEOUT ;
 int SYSTEM_SYSMODE ;
 int m5mols_busy_wait (struct v4l2_subdev*,int ,int ,int,int ) ;
 int m5mols_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int m5mols_reg_mode(struct v4l2_subdev *sd, u8 mode)
{
 int ret = m5mols_write(sd, SYSTEM_SYSMODE, mode);
 if (ret < 0)
  return ret;
 return m5mols_busy_wait(sd, SYSTEM_SYSMODE, mode, 0xff,
    M5MOLS_MODE_CHANGE_TIMEOUT);
}
