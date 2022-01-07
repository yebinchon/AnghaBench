
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int io_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static unsigned int adv7611_read_cable_det(struct v4l2_subdev *sd)
{
 u8 value = io_read(sd, 0x6f);

 return value & 1;
}
