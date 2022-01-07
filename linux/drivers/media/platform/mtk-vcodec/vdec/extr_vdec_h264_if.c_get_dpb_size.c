
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vdec_h264_inst {TYPE_2__* vsi; } ;
struct TYPE_3__ {unsigned int dpb_sz; } ;
struct TYPE_4__ {TYPE_1__ dec; } ;


 int mtk_vcodec_debug (struct vdec_h264_inst*,char*,unsigned int) ;

__attribute__((used)) static void get_dpb_size(struct vdec_h264_inst *inst, unsigned int *dpb_sz)
{
 *dpb_sz = inst->vsi->dec.dpb_sz;
 mtk_vcodec_debug(inst, "sz=%d", *dpb_sz);
}
