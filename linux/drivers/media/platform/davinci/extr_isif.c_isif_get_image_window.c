
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_rect {int dummy; } ;
struct TYPE_5__ {struct v4l2_rect win; } ;
struct TYPE_4__ {struct v4l2_rect win; } ;
struct TYPE_6__ {scalar_t__ if_type; TYPE_2__ ycbcr; TYPE_1__ bayer; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_3__ isif_cfg ;

__attribute__((used)) static void isif_get_image_window(struct v4l2_rect *win)
{
 if (isif_cfg.if_type == VPFE_RAW_BAYER)
  *win = isif_cfg.bayer.win;
 else
  *win = isif_cfg.ycbcr.win;
}
