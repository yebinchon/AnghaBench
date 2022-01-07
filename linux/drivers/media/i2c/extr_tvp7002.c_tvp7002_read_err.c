
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int tvp7002_read (struct v4l2_subdev*,int ,int *) ;

__attribute__((used)) static inline void tvp7002_read_err(struct v4l2_subdev *sd, u8 reg,
       u8 *dst, int *err)
{
 if (!*err)
  *err = tvp7002_read(sd, reg, dst);
}
