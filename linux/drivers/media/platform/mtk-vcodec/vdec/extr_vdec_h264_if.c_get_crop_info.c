
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vdec_h264_inst {TYPE_2__* vsi; } ;
struct v4l2_rect {int height; int width; int top; int left; } ;
struct TYPE_3__ {int height; int width; int top; int left; } ;
struct TYPE_4__ {TYPE_1__ crop; } ;


 int mtk_vcodec_debug (struct vdec_h264_inst*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void get_crop_info(struct vdec_h264_inst *inst, struct v4l2_rect *cr)
{
 cr->left = inst->vsi->crop.left;
 cr->top = inst->vsi->crop.top;
 cr->width = inst->vsi->crop.width;
 cr->height = inst->vsi->crop.height;

 mtk_vcodec_debug(inst, "l=%d, t=%d, w=%d, h=%d",
    cr->left, cr->top, cr->width, cr->height);
}
