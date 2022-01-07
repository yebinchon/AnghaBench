
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int value; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* mt9v011_init_default ;
 int mt9v011_write (struct v4l2_subdev*,int ,int ) ;
 int set_balance (struct v4l2_subdev*) ;
 int set_read_mode (struct v4l2_subdev*) ;
 int set_res (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v011_reset(struct v4l2_subdev *sd, u32 val)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mt9v011_init_default); i++)
  mt9v011_write(sd, mt9v011_init_default[i].reg,
          mt9v011_init_default[i].value);

 set_balance(sd);
 set_res(sd);
 set_read_mode(sd);

 return 0;
}
