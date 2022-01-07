
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int REG_HREF ;
 int REG_HSTART ;
 int REG_HSTOP ;
 int REG_VREF ;
 int REG_VSTART ;
 int REG_VSTOP ;
 int msleep (int) ;
 scalar_t__ ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;
 int ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;

__attribute__((used)) static int ov7670_set_hw(struct v4l2_subdev *sd, int hstart, int hstop,
  int vstart, int vstop)
{
 int ret;
 unsigned char v;





 ret = ov7670_write(sd, REG_HSTART, (hstart >> 3) & 0xff);
 ret += ov7670_write(sd, REG_HSTOP, (hstop >> 3) & 0xff);
 ret += ov7670_read(sd, REG_HREF, &v);
 v = (v & 0xc0) | ((hstop & 0x7) << 3) | (hstart & 0x7);
 msleep(10);
 ret += ov7670_write(sd, REG_HREF, v);



 ret += ov7670_write(sd, REG_VSTART, (vstart >> 2) & 0xff);
 ret += ov7670_write(sd, REG_VSTOP, (vstop >> 2) & 0xff);
 ret += ov7670_read(sd, REG_VREF, &v);
 v = (v & 0xf0) | ((vstop & 0x3) << 2) | (vstart & 0x3);
 msleep(10);
 ret += ov7670_write(sd, REG_VREF, v);
 return ret;
}
