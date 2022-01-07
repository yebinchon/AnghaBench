
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_vpu_ipi_msg_common {int msg_id; scalar_t__ status; scalar_t__ venc_inst; } ;
struct venc_vpu_inst {int signaled; int failure; } ;


 scalar_t__ VENC_IPI_MSG_STATUS_OK ;




 int handle_enc_encode_msg (struct venc_vpu_inst*,void*) ;
 int handle_enc_init_msg (struct venc_vpu_inst*,void*) ;
 int mtk_vcodec_debug (struct venc_vpu_inst*,char*,int,struct venc_vpu_inst*,scalar_t__) ;
 int mtk_vcodec_debug_leave (struct venc_vpu_inst*) ;
 int mtk_vcodec_err (struct venc_vpu_inst*,char*,int) ;

__attribute__((used)) static void vpu_enc_ipi_handler(void *data, unsigned int len, void *priv)
{
 struct venc_vpu_ipi_msg_common *msg = data;
 struct venc_vpu_inst *vpu =
  (struct venc_vpu_inst *)(unsigned long)msg->venc_inst;

 mtk_vcodec_debug(vpu, "msg_id %x inst %p status %d",
    msg->msg_id, vpu, msg->status);

 switch (msg->msg_id) {
 case 129:
  handle_enc_init_msg(vpu, data);
  break;
 case 128:
  break;
 case 130:
  handle_enc_encode_msg(vpu, data);
  break;
 case 131:
  break;
 default:
  mtk_vcodec_err(vpu, "unknown msg id %x", msg->msg_id);
  break;
 }

 vpu->signaled = 1;
 vpu->failure = (msg->status != VENC_IPI_MSG_STATUS_OK);

 mtk_vcodec_debug_leave(vpu);
}
