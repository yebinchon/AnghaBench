
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;


 int io_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static u16 adv7842_read_cable_det(struct v4l2_subdev *sd)
{
 u8 reg = io_read(sd, 0x6f);
 u16 val = 0;

 if (reg & 0x02)
  val |= 1;
 if (reg & 0x01)
  val |= 2;
 return val;
}
