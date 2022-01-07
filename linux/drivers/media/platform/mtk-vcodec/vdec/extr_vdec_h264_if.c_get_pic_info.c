
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_pic_info {int * fb_sz; int buf_h; int buf_w; int pic_h; int pic_w; } ;
struct vdec_h264_inst {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct vdec_pic_info pic; } ;


 int mtk_vcodec_debug (struct vdec_h264_inst*,char*,int ,int ,...) ;

__attribute__((used)) static void get_pic_info(struct vdec_h264_inst *inst,
    struct vdec_pic_info *pic)
{
 *pic = inst->vsi->pic;
 mtk_vcodec_debug(inst, "pic(%d, %d), buf(%d, %d)",
    pic->pic_w, pic->pic_h, pic->buf_w, pic->buf_h);
 mtk_vcodec_debug(inst, "fb size: Y(%d), C(%d)",
    pic->fb_sz[0], pic->fb_sz[1]);
}
