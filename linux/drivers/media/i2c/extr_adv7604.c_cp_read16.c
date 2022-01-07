
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;


 int cp_read (struct v4l2_subdev*,scalar_t__) ;

__attribute__((used)) static u16 cp_read16(struct v4l2_subdev *sd, u8 reg, u16 mask)
{
 return ((cp_read(sd, reg) << 8) | cp_read(sd, reg + 1)) & mask;
}
