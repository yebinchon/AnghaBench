
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;


 int vpx3220_fp_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int vpx3220_write_fp_block(struct v4l2_subdev *sd,
  const u16 *data, unsigned int len)
{
 u8 reg;
 int ret = 0;

 while (len > 1) {
  reg = *data++;
  ret |= vpx3220_fp_write(sd, reg, *data++);
  len -= 2;
 }

 return ret;
}
