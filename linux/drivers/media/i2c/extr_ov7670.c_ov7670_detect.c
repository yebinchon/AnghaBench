
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int ENODEV ;
 int REG_MIDH ;
 int REG_MIDL ;
 int REG_PID ;
 int REG_VER ;
 int ov7670_init (struct v4l2_subdev*,int ) ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;

__attribute__((used)) static int ov7670_detect(struct v4l2_subdev *sd)
{
 unsigned char v;
 int ret;

 ret = ov7670_init(sd, 0);
 if (ret < 0)
  return ret;
 ret = ov7670_read(sd, REG_MIDH, &v);
 if (ret < 0)
  return ret;
 if (v != 0x7f)
  return -ENODEV;
 ret = ov7670_read(sd, REG_MIDL, &v);
 if (ret < 0)
  return ret;
 if (v != 0xa2)
  return -ENODEV;



 ret = ov7670_read(sd, REG_PID, &v);
 if (ret < 0)
  return ret;
 if (v != 0x76)
  return -ENODEV;
 ret = ov7670_read(sd, REG_VER, &v);
 if (ret < 0)
  return ret;
 if (v != 0x73)
  return -ENODEV;
 return 0;
}
