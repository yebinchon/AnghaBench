
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int io_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static inline bool no_power(struct v4l2_subdev *sd)
{

 return io_read(sd, 0x0c) & 0x24;
}
