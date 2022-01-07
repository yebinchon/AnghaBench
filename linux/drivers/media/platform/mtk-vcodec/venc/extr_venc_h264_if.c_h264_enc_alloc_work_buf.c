
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct venc_h264_vpu_buf {int size; scalar_t__ iova; int vpua; } ;
struct TYPE_6__ {int size; scalar_t__ dma_addr; void* va; } ;
struct TYPE_5__ {int dev; } ;
struct venc_h264_inst {TYPE_3__ pps_buf; int ctx; TYPE_3__* work_bufs; TYPE_2__ vpu_inst; TYPE_1__* vsi; } ;
struct TYPE_4__ {struct venc_h264_vpu_buf* work_bufs; } ;


 int VENC_H264_VPU_WORK_BUF_MAX ;
 int VENC_H264_VPU_WORK_BUF_RC_CODE ;
 int VENC_H264_VPU_WORK_BUF_SKIP_FRAME ;
 int h264_enc_free_work_buf (struct venc_h264_inst*) ;
 int memcpy (void*,void*,int) ;
 int mtk_vcodec_debug (struct venc_h264_inst*,char*,int,void*,scalar_t__*,int) ;
 int mtk_vcodec_debug_enter (struct venc_h264_inst*) ;
 int mtk_vcodec_debug_leave (struct venc_h264_inst*) ;
 int mtk_vcodec_err (struct venc_h264_inst*,char*,...) ;
 int mtk_vcodec_mem_alloc (int ,TYPE_3__*) ;
 void* vpu_mapping_dm_addr (int ,int ) ;

__attribute__((used)) static int h264_enc_alloc_work_buf(struct venc_h264_inst *inst)
{
 int i;
 int ret = 0;
 struct venc_h264_vpu_buf *wb = inst->vsi->work_bufs;

 mtk_vcodec_debug_enter(inst);

 for (i = 0; i < VENC_H264_VPU_WORK_BUF_MAX; i++) {
  inst->work_bufs[i].size = wb[i].size;
  if (i == VENC_H264_VPU_WORK_BUF_SKIP_FRAME) {
   inst->work_bufs[i].va = vpu_mapping_dm_addr(
    inst->vpu_inst.dev, wb[i].vpua);
   inst->work_bufs[i].dma_addr = 0;
  } else {
   ret = mtk_vcodec_mem_alloc(inst->ctx,
         &inst->work_bufs[i]);
   if (ret) {
    mtk_vcodec_err(inst,
            "cannot allocate buf %d", i);
    goto err_alloc;
   }






   if (i == VENC_H264_VPU_WORK_BUF_RC_CODE) {
    void *tmp_va;

    tmp_va = vpu_mapping_dm_addr(inst->vpu_inst.dev,
            wb[i].vpua);
    memcpy(inst->work_bufs[i].va, tmp_va,
           wb[i].size);
   }
  }
  wb[i].iova = inst->work_bufs[i].dma_addr;

  mtk_vcodec_debug(inst,
     "work_buf[%d] va=0x%p iova=%pad size=%zu",
     i, inst->work_bufs[i].va,
     &inst->work_bufs[i].dma_addr,
     inst->work_bufs[i].size);
 }


 inst->pps_buf.size = 128;
 ret = mtk_vcodec_mem_alloc(inst->ctx, &inst->pps_buf);
 if (ret) {
  mtk_vcodec_err(inst, "cannot allocate pps_buf");
  goto err_alloc;
 }

 mtk_vcodec_debug_leave(inst);

 return ret;

err_alloc:
 h264_enc_free_work_buf(inst);

 return ret;
}
