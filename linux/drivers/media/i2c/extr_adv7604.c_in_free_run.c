
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int cp_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static inline bool in_free_run(struct v4l2_subdev *sd)
{
 return cp_read(sd, 0xff) & 0x10;
}
