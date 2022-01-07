
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;


 int io_read (struct v4l2_subdev*,scalar_t__) ;

__attribute__((used)) static unsigned int io_readn(struct v4l2_subdev *sd, u16 reg, u8 len, u8 *data)
{
 int i;
 int sz = 0;
 int val;

 for (i = 0; i < len; i++) {
  val = io_read(sd, reg + i);
  if (val < 0)
   break;
  data[i] = val;
  sz++;
 }

 return sz;
}
