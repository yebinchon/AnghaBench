
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;


 int vs6624_write (struct v4l2_subdev*,int,int ) ;

__attribute__((used)) static int vs6624_writeregs(struct v4l2_subdev *sd, const u16 *regs)
{
 u16 reg;
 u8 data;

 while (*regs != 0x00) {
  reg = *regs++;
  data = *regs++;

  vs6624_write(sd, reg, data);
 }
 return 0;
}
