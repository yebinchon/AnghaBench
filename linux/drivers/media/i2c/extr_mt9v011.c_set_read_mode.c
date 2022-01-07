
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v011 {scalar_t__ vflip; scalar_t__ hflip; } ;


 int R20_MT9V011_READ_MODE ;
 int mt9v011_write (struct v4l2_subdev*,int ,unsigned int) ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;

__attribute__((used)) static void set_read_mode(struct v4l2_subdev *sd)
{
 struct mt9v011 *core = to_mt9v011(sd);
 unsigned mode = 0x1000;

 if (core->hflip)
  mode |= 0x4000;

 if (core->vflip)
  mode |= 0x8000;

 mt9v011_write(sd, R20_MT9V011_READ_MODE, mode);
}
