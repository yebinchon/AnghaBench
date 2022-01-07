
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int io_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static void adv7842_irq_enable(struct v4l2_subdev *sd, bool enable)
{
 if (enable) {

  io_write(sd, 0x46, 0x9c);

  io_write(sd, 0x5a, 0x10);

  io_write(sd, 0x73, 0x03);

  io_write(sd, 0x78, 0x03);

  io_write(sd, 0xa0, 0x09);

  io_write(sd, 0x69, 0x08);
 } else {
  io_write(sd, 0x46, 0x0);
  io_write(sd, 0x5a, 0x0);
  io_write(sd, 0x73, 0x0);
  io_write(sd, 0x78, 0x0);
  io_write(sd, 0xa0, 0x0);
  io_write(sd, 0x69, 0x0);
 }
}
