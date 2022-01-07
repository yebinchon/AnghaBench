
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_vpu_inst {int inst_addr; } ;
struct venc_enc_param {int intra_period; int gop_size; int frm_rate; int bitrate; } ;
struct venc_ap_ipi_msg_set_param {int param_id; int data_item; int * data; int vpu_inst_addr; int msg_id; } ;
typedef int out ;
typedef enum venc_set_param_type { ____Placeholder_venc_set_param_type } venc_set_param_type ;


 int AP_IPIMSG_ENC_SET_PARAM ;
 int EINVAL ;







 int memset (struct venc_ap_ipi_msg_set_param*,int ,int) ;
 int mtk_vcodec_debug (struct venc_vpu_inst*,char*,int) ;
 int mtk_vcodec_err (struct venc_vpu_inst*,char*,int) ;
 scalar_t__ vpu_enc_send_msg (struct venc_vpu_inst*,struct venc_ap_ipi_msg_set_param*,int) ;

int vpu_enc_set_param(struct venc_vpu_inst *vpu,
        enum venc_set_param_type id,
        struct venc_enc_param *enc_param)
{
 struct venc_ap_ipi_msg_set_param out;

 mtk_vcodec_debug(vpu, "id %d ->", id);

 memset(&out, 0, sizeof(out));
 out.msg_id = AP_IPIMSG_ENC_SET_PARAM;
 out.vpu_inst_addr = vpu->inst_addr;
 out.param_id = id;
 switch (id) {
 case 132:
  out.data_item = 0;
  break;
 case 131:
  out.data_item = 0;
  break;
 case 134:
  out.data_item = 1;
  out.data[0] = enc_param->bitrate;
  break;
 case 133:
  out.data_item = 1;
  out.data[0] = enc_param->frm_rate;
  break;
 case 130:
  out.data_item = 1;
  out.data[0] = enc_param->gop_size;
  break;
 case 129:
  out.data_item = 1;
  out.data[0] = enc_param->intra_period;
  break;
 case 128:
  out.data_item = 0;
  break;
 default:
  mtk_vcodec_err(vpu, "id %d not supported", id);
  return -EINVAL;
 }
 if (vpu_enc_send_msg(vpu, &out, sizeof(out))) {
  mtk_vcodec_err(vpu,
          "AP_IPIMSG_ENC_SET_PARAM %d fail", id);
  return -EINVAL;
 }

 mtk_vcodec_debug(vpu, "id %d <-", id);

 return 0;
}
