
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {int vpu_inst; } ;
struct mtk_vcodec_mem {int dummy; } ;


 int EINVAL ;
 int H264_BS_MODE_PPS ;
 unsigned int MTK_VENC_IRQ_STATUS_PPS ;
 int VENC_PIC_BITSTREAM_BYTE_CNT ;
 unsigned int h264_enc_wait_venc_done (struct venc_h264_inst*) ;
 unsigned int h264_read_reg (struct venc_h264_inst*,int ) ;
 int mtk_vcodec_debug (struct venc_h264_inst*,char*,unsigned int) ;
 int mtk_vcodec_debug_enter (struct venc_h264_inst*) ;
 int mtk_vcodec_err (struct venc_h264_inst*,char*,unsigned int) ;
 int vpu_enc_encode (int *,int ,int *,struct mtk_vcodec_mem*,unsigned int*) ;

__attribute__((used)) static int h264_encode_pps(struct venc_h264_inst *inst,
      struct mtk_vcodec_mem *bs_buf,
      unsigned int *bs_size)
{
 int ret = 0;
 unsigned int irq_status;

 mtk_vcodec_debug_enter(inst);

 ret = vpu_enc_encode(&inst->vpu_inst, H264_BS_MODE_PPS, ((void*)0),
        bs_buf, bs_size);
 if (ret)
  return ret;

 irq_status = h264_enc_wait_venc_done(inst);
 if (irq_status != MTK_VENC_IRQ_STATUS_PPS) {
  mtk_vcodec_err(inst, "expect irq status %d",
          MTK_VENC_IRQ_STATUS_PPS);
  return -EINVAL;
 }

 *bs_size = h264_read_reg(inst, VENC_PIC_BITSTREAM_BYTE_CNT);
 mtk_vcodec_debug(inst, "bs size %d <-", *bs_size);

 return ret;
}
