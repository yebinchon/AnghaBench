
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int adv7183_write (struct v4l2_subdev*,unsigned char,unsigned char) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int adv7183_writeregs(struct v4l2_subdev *sd,
  const unsigned char *regs, unsigned int num)
{
 unsigned char reg, data;
 unsigned int cnt = 0;

 if (num & 0x1) {
  v4l2_err(sd, "invalid regs array\n");
  return -1;
 }

 while (cnt < num) {
  reg = *regs++;
  data = *regs++;
  cnt += 2;

  adv7183_write(sd, reg, data);
 }
 return 0;
}
