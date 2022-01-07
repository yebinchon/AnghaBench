
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;



int __attribute__ ((weak)) m5mols_update_fw(struct v4l2_subdev *sd,
  int (*set_power)(struct m5mols_info *, bool))
{
 return 0;
}
