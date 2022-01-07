
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int is_key_frm; } ;
struct venc_vp8_inst {TYPE_4__* work_bufs; TYPE_3__* vsi; TYPE_1__ vpu_inst; } ;
struct mtk_vcodec_mem {int size; int va; } ;
struct TYPE_8__ {int* va; } ;
struct TYPE_6__ {int pic_w; int pic_h; } ;
struct TYPE_7__ {TYPE_2__ config; } ;


 int EINVAL ;
 int MAX_AC_TAG_SIZE ;
 int VENC_BITSTREAM_FRAME_SIZE ;
 int VENC_BITSTREAM_HEADER_LEN ;
 size_t VENC_VP8_VPU_WORK_BUF_BS_HEADER ;
 int memcpy (int ,int*,unsigned int) ;
 int memmove (scalar_t__,int ,int) ;
 int mtk_vcodec_err (struct venc_vp8_inst*,char*,int) ;
 int vp8_enc_read_reg (struct venc_vp8_inst*,int ) ;

__attribute__((used)) static int vp8_enc_compose_one_frame(struct venc_vp8_inst *inst,
         struct mtk_vcodec_mem *bs_buf,
         unsigned int *bs_size)
{
 unsigned int not_key;
 u32 bs_frm_size;
 u32 bs_hdr_len;
 unsigned int ac_tag_size;
 u8 ac_tag[MAX_AC_TAG_SIZE];
 u32 tag;

 bs_frm_size = vp8_enc_read_reg(inst, VENC_BITSTREAM_FRAME_SIZE);
 bs_hdr_len = vp8_enc_read_reg(inst, VENC_BITSTREAM_HEADER_LEN);


 not_key = !inst->vpu_inst.is_key_frm;
 tag = (bs_hdr_len << 5) | 0x10 | not_key;
 ac_tag[0] = tag & 0xff;
 ac_tag[1] = (tag >> 8) & 0xff;
 ac_tag[2] = (tag >> 16) & 0xff;


 if (not_key == 0) {
  ac_tag_size = MAX_AC_TAG_SIZE;
  ac_tag[3] = 0x9d;
  ac_tag[4] = 0x01;
  ac_tag[5] = 0x2a;
  ac_tag[6] = inst->vsi->config.pic_w;
  ac_tag[7] = inst->vsi->config.pic_w >> 8;
  ac_tag[8] = inst->vsi->config.pic_h;
  ac_tag[9] = inst->vsi->config.pic_h >> 8;
 } else {
  ac_tag_size = 3;
 }

 if (bs_buf->size < bs_hdr_len + bs_frm_size + ac_tag_size) {
  mtk_vcodec_err(inst, "bitstream buf size is too small(%zu)",
          bs_buf->size);
  return -EINVAL;
 }
 memmove(bs_buf->va + bs_hdr_len + ac_tag_size,
  bs_buf->va, bs_frm_size);
 memcpy(bs_buf->va + ac_tag_size,
        inst->work_bufs[VENC_VP8_VPU_WORK_BUF_BS_HEADER].va,
        bs_hdr_len);
 memcpy(bs_buf->va, ac_tag, ac_tag_size);
 *bs_size = bs_frm_size + bs_hdr_len + ac_tag_size;

 return 0;
}
