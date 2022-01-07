
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;


 int io_read (struct v4l2_subdev*,scalar_t__) ;

__attribute__((used)) static inline long io_read16(struct v4l2_subdev *sd, u16 reg)
{
 int val;
 long lval = 0;

 val = io_read(sd, reg);
 if (val < 0)
  return val;
 lval |= (val << 8);
 val = io_read(sd, reg + 1);
 if (val < 0)
  return val;
 lval |= val;

 return lval;
}
