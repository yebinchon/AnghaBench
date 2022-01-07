
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;


 int saa717x_write (struct v4l2_subdev*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void saa717x_write_regs(struct v4l2_subdev *sd, u32 *data)
{
 while (data[0] || data[1]) {
  saa717x_write(sd, data[0], data[1]);
  data += 2;
 }
}
