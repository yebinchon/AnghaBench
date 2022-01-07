
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address; int adapter_id; } ;
struct TYPE_4__ {int fwnode; TYPE_1__ i2c; int device_name; } ;
struct v4l2_async_subdev {int match_type; TYPE_2__ match; } ;





 int strcmp (int ,int ) ;

__attribute__((used)) static bool asd_equal(struct v4l2_async_subdev *asd_x,
        struct v4l2_async_subdev *asd_y)
{
 if (asd_x->match_type != asd_y->match_type)
  return 0;

 switch (asd_x->match_type) {
 case 130:
  return strcmp(asd_x->match.device_name,
         asd_y->match.device_name) == 0;
 case 128:
  return asd_x->match.i2c.adapter_id ==
   asd_y->match.i2c.adapter_id &&
   asd_x->match.i2c.address ==
   asd_y->match.i2c.address;
 case 129:
  return asd_x->match.fwnode == asd_y->match.fwnode;
 default:
  break;
 }

 return 0;
}
