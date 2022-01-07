
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_rect {int height; int width; int left; int top; } ;
struct TYPE_8__ {int height; int width; int left; int top; } ;
struct TYPE_9__ {TYPE_3__ win; } ;
struct TYPE_6__ {int height; int width; int left; int top; } ;
struct TYPE_7__ {TYPE_1__ win; } ;
struct TYPE_10__ {scalar_t__ if_type; TYPE_4__ ycbcr; TYPE_2__ bayer; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_5__ isif_cfg ;

__attribute__((used)) static int isif_set_image_window(struct v4l2_rect *win)
{
 if (isif_cfg.if_type == VPFE_RAW_BAYER) {
  isif_cfg.bayer.win.top = win->top;
  isif_cfg.bayer.win.left = win->left;
  isif_cfg.bayer.win.width = win->width;
  isif_cfg.bayer.win.height = win->height;
 } else {
  isif_cfg.ycbcr.win.top = win->top;
  isif_cfg.ycbcr.win.left = win->left;
  isif_cfg.ycbcr.win.width = win->width;
  isif_cfg.ycbcr.win.height = win->height;
 }
 return 0;
}
