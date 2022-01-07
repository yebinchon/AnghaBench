
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vdec_vpu_inst {int inst_addr; } ;
struct vdec_ap_ipi_dec_start {int * data; int vpu_inst_addr; int msg_id; } ;
typedef int msg ;


 int AP_IPIMSG_DEC_START ;
 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int memset (struct vdec_ap_ipi_dec_start*,int ,int) ;
 int mtk_vcodec_debug (struct vdec_vpu_inst*,char*,int) ;
 int mtk_vcodec_debug_enter (struct vdec_vpu_inst*) ;
 int mtk_vcodec_err (struct vdec_vpu_inst*,char*,unsigned int) ;
 int vcodec_vpu_send_msg (struct vdec_vpu_inst*,void*,int) ;

int vpu_dec_start(struct vdec_vpu_inst *vpu, uint32_t *data, unsigned int len)
{
 struct vdec_ap_ipi_dec_start msg;
 int i;
 int err = 0;

 mtk_vcodec_debug_enter(vpu);

 if (len > ARRAY_SIZE(msg.data)) {
  mtk_vcodec_err(vpu, "invalid len = %d\n", len);
  return -EINVAL;
 }

 memset(&msg, 0, sizeof(msg));
 msg.msg_id = AP_IPIMSG_DEC_START;
 msg.vpu_inst_addr = vpu->inst_addr;

 for (i = 0; i < len; i++)
  msg.data[i] = data[i];

 err = vcodec_vpu_send_msg(vpu, (void *)&msg, sizeof(msg));
 mtk_vcodec_debug(vpu, "- ret=%d", err);
 return err;
}
