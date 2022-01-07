
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vpu_inst {int handler; int id; int dev; int wq; } ;
struct vdec_ap_ipi_init {unsigned long ap_inst_addr; int msg_id; } ;
typedef int msg ;


 int AP_IPIMSG_DEC_INIT ;
 int init_waitqueue_head (int *) ;
 int memset (struct vdec_ap_ipi_init*,int ,int) ;
 int mtk_vcodec_debug (struct vdec_vpu_inst*,char*,...) ;
 int mtk_vcodec_debug_enter (struct vdec_vpu_inst*) ;
 int mtk_vcodec_err (struct vdec_vpu_inst*,char*,int) ;
 int vcodec_vpu_send_msg (struct vdec_vpu_inst*,void*,int) ;
 int vpu_ipi_register (int ,int ,int ,char*,int *) ;

int vpu_dec_init(struct vdec_vpu_inst *vpu)
{
 struct vdec_ap_ipi_init msg;
 int err;

 mtk_vcodec_debug_enter(vpu);

 init_waitqueue_head(&vpu->wq);

 err = vpu_ipi_register(vpu->dev, vpu->id, vpu->handler, "vdec", ((void*)0));
 if (err != 0) {
  mtk_vcodec_err(vpu, "vpu_ipi_register fail status=%d", err);
  return err;
 }

 memset(&msg, 0, sizeof(msg));
 msg.msg_id = AP_IPIMSG_DEC_INIT;
 msg.ap_inst_addr = (unsigned long)vpu;

 mtk_vcodec_debug(vpu, "vdec_inst=%p", vpu);

 err = vcodec_vpu_send_msg(vpu, (void *)&msg, sizeof(msg));
 mtk_vcodec_debug(vpu, "- ret=%d", err);
 return err;
}
