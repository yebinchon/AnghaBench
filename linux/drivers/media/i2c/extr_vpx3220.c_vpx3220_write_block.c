
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int vpx3220_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int vpx3220_write_block(struct v4l2_subdev *sd, const u8 *data, unsigned int len)
{
 u8 reg;
 int ret = -1;

 while (len >= 2) {
  reg = *data++;
  ret = vpx3220_write(sd, reg, *data++);
  if (ret < 0)
   break;
  len -= 2;
 }

 return ret;
}
