
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_rect {int height; int width; } ;
struct mt9t112_priv {int num_formats; TYPE_1__* format; struct v4l2_rect frame; } ;
struct TYPE_2__ {scalar_t__ code; } ;


 int EINVAL ;
 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 TYPE_1__* mt9t112_cfmts ;
 int v4l_bound_align_image (int *,int ,int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int mt9t112_set_params(struct mt9t112_priv *priv,
         const struct v4l2_rect *rect,
         u32 code)
{
 int i;




 for (i = 0; i < priv->num_formats; i++)
  if (mt9t112_cfmts[i].code == code)
   break;

 if (i == priv->num_formats)
  return -EINVAL;

 priv->frame = *rect;




 v4l_bound_align_image(&priv->frame.width, 0, MAX_WIDTH, 0,
         &priv->frame.height, 0, MAX_HEIGHT, 0, 0);

 priv->format = mt9t112_cfmts + i;

 return 0;
}
