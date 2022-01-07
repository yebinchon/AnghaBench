
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int cec_read (struct v4l2_subdev*,int) ;
 int cec_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static inline int cec_write_clr_set(struct v4l2_subdev *sd, u8 reg, u8 mask,
       u8 val)
{
 return cec_write(sd, reg, (cec_read(sd, reg) & ~mask) | val);
}
