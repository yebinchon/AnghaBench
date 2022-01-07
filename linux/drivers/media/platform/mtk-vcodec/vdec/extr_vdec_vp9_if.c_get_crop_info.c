
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_vp9_inst {TYPE_1__* vsi; } ;
struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_2__ {int pic_h; int pic_w; } ;


 int mtk_vcodec_debug (struct vdec_vp9_inst*,char*,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void get_crop_info(struct vdec_vp9_inst *inst, struct v4l2_rect *cr)
{
 cr->left = 0;
 cr->top = 0;
 cr->width = inst->vsi->pic_w;
 cr->height = inst->vsi->pic_h;
 mtk_vcodec_debug(inst, "get crop info l=%d, t=%d, w=%d, h=%d\n",
    cr->left, cr->top, cr->width, cr->height);
}
