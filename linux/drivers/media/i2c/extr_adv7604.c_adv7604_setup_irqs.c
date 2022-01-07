
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int io_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static void adv7604_setup_irqs(struct v4l2_subdev *sd)
{
 io_write(sd, 0x41, 0xd7);
}
