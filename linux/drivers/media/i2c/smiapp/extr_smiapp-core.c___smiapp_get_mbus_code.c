
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {TYPE_3__* internal_csi_format; TYPE_2__* csi_format; TYPE_1__* src; } ;
struct TYPE_6__ {int code; } ;
struct TYPE_5__ {int code; } ;
struct TYPE_4__ {struct v4l2_subdev sd; } ;


 unsigned int SMIAPP_PAD_SRC ;
 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static u32 __smiapp_get_mbus_code(struct v4l2_subdev *subdev,
      unsigned int pad)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);

 if (subdev == &sensor->src->sd && pad == SMIAPP_PAD_SRC)
  return sensor->csi_format->code;
 else
  return sensor->internal_csi_format->code;
}
