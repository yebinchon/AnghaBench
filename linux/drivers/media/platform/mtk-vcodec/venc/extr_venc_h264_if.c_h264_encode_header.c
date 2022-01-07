
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int va; } ;
struct venc_h264_inst {TYPE_1__ pps_buf; } ;
struct mtk_vcodec_mem {scalar_t__ va; } ;


 int h264_encode_pps (struct venc_h264_inst*,TYPE_1__*,unsigned int*) ;
 int h264_encode_sps (struct venc_h264_inst*,struct mtk_vcodec_mem*,unsigned int*) ;
 int memcpy (scalar_t__,int ,unsigned int) ;

__attribute__((used)) static int h264_encode_header(struct venc_h264_inst *inst,
         struct mtk_vcodec_mem *bs_buf,
         unsigned int *bs_size)
{
 int ret = 0;
 unsigned int bs_size_sps;
 unsigned int bs_size_pps;

 ret = h264_encode_sps(inst, bs_buf, &bs_size_sps);
 if (ret)
  return ret;

 ret = h264_encode_pps(inst, &inst->pps_buf, &bs_size_pps);
 if (ret)
  return ret;

 memcpy(bs_buf->va + bs_size_sps, inst->pps_buf.va, bs_size_pps);
 *bs_size = bs_size_sps + bs_size_pps;

 return ret;
}
