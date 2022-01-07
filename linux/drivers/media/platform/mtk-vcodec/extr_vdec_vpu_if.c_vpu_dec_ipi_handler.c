
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vpu_ipi_ack {int msg_id; scalar_t__ status; scalar_t__ ap_inst_addr; } ;
struct vdec_vpu_inst {scalar_t__ failure; int signaled; } ;







 int handle_init_ack_msg (void*) ;
 int mtk_vcodec_debug (struct vdec_vpu_inst*,char*,int) ;
 int mtk_vcodec_err (struct vdec_vpu_inst*,char*,int) ;

void vpu_dec_ipi_handler(void *data, unsigned int len, void *priv)
{
 struct vdec_vpu_ipi_ack *msg = data;
 struct vdec_vpu_inst *vpu = (struct vdec_vpu_inst *)
     (unsigned long)msg->ap_inst_addr;

 mtk_vcodec_debug(vpu, "+ id=%X", msg->msg_id);

 if (msg->status == 0) {
  switch (msg->msg_id) {
  case 130:
   handle_init_ack_msg(data);
   break;

  case 128:
  case 131:
  case 132:
  case 129:
   break;

  default:
   mtk_vcodec_err(vpu, "invalid msg=%X", msg->msg_id);
   break;
  }
 }

 mtk_vcodec_debug(vpu, "- id=%X", msg->msg_id);
 vpu->failure = msg->status;
 vpu->signaled = 1;
}
