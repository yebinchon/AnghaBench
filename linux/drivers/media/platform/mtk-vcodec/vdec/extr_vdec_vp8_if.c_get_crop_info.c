
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vdec_vp8_inst {TYPE_2__* vsi; } ;
struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_3__ {int pic_h; int pic_w; } ;
struct TYPE_4__ {TYPE_1__ pic; } ;


 int mtk_vcodec_debug (struct vdec_vp8_inst*,char*,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void get_crop_info(struct vdec_vp8_inst *inst, struct v4l2_rect *cr)
{
 cr->left = 0;
 cr->top = 0;
 cr->width = inst->vsi->pic.pic_w;
 cr->height = inst->vsi->pic.pic_h;
 mtk_vcodec_debug(inst, "get crop info l=%d, t=%d, w=%d, h=%d",
    cr->left, cr->top, cr->width, cr->height);
}
