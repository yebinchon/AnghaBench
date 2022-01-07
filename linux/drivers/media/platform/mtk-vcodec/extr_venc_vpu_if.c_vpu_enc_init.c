
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_vpu_inst {int id; int dev; scalar_t__ failure; scalar_t__ signaled; int wq_hd; } ;
struct venc_ap_ipi_msg_init {unsigned long venc_inst; int msg_id; } ;
typedef int out ;


 int AP_IPIMSG_ENC_INIT ;
 int EINVAL ;
 int init_waitqueue_head (int *) ;
 int memset (struct venc_ap_ipi_msg_init*,int ,int) ;
 int mtk_vcodec_debug_enter (struct venc_vpu_inst*) ;
 int mtk_vcodec_debug_leave (struct venc_vpu_inst*) ;
 int mtk_vcodec_err (struct venc_vpu_inst*,char*,...) ;
 int vpu_enc_ipi_handler ;
 scalar_t__ vpu_enc_send_msg (struct venc_vpu_inst*,struct venc_ap_ipi_msg_init*,int) ;
 int vpu_ipi_register (int ,int ,int ,int *,int *) ;

int vpu_enc_init(struct venc_vpu_inst *vpu)
{
 int status;
 struct venc_ap_ipi_msg_init out;

 mtk_vcodec_debug_enter(vpu);

 init_waitqueue_head(&vpu->wq_hd);
 vpu->signaled = 0;
 vpu->failure = 0;

 status = vpu_ipi_register(vpu->dev, vpu->id, vpu_enc_ipi_handler,
      ((void*)0), ((void*)0));
 if (status) {
  mtk_vcodec_err(vpu, "vpu_ipi_register fail %d", status);
  return -EINVAL;
 }

 memset(&out, 0, sizeof(out));
 out.msg_id = AP_IPIMSG_ENC_INIT;
 out.venc_inst = (unsigned long)vpu;
 if (vpu_enc_send_msg(vpu, &out, sizeof(out))) {
  mtk_vcodec_err(vpu, "AP_IPIMSG_ENC_INIT fail");
  return -EINVAL;
 }

 mtk_vcodec_debug_leave(vpu);

 return 0;
}
