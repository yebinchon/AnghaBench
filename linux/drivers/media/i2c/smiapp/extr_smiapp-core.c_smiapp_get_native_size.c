
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {scalar_t__ height; scalar_t__ width; scalar_t__ left; scalar_t__ top; } ;
struct smiapp_subdev {TYPE_1__* sensor; } ;
struct TYPE_2__ {scalar_t__* limits; } ;


 size_t SMIAPP_LIMIT_X_ADDR_MAX ;
 size_t SMIAPP_LIMIT_Y_ADDR_MAX ;

__attribute__((used)) static void smiapp_get_native_size(struct smiapp_subdev *ssd,
        struct v4l2_rect *r)
{
 r->top = 0;
 r->left = 0;
 r->width = ssd->sensor->limits[SMIAPP_LIMIT_X_ADDR_MAX] + 1;
 r->height = ssd->sensor->limits[SMIAPP_LIMIT_Y_ADDR_MAX] + 1;
}
