
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vpu_inst {int inst_addr; } ;
struct vdec_ap_ipi_cmd {unsigned int msg_id; int vpu_inst_addr; } ;
typedef int msg ;


 int memset (struct vdec_ap_ipi_cmd*,int ,int) ;
 int mtk_vcodec_debug (struct vdec_vpu_inst*,char*,unsigned int,...) ;
 int vcodec_vpu_send_msg (struct vdec_vpu_inst*,struct vdec_ap_ipi_cmd*,int) ;

__attribute__((used)) static int vcodec_send_ap_ipi(struct vdec_vpu_inst *vpu, unsigned int msg_id)
{
 struct vdec_ap_ipi_cmd msg;
 int err = 0;

 mtk_vcodec_debug(vpu, "+ id=%X", msg_id);

 memset(&msg, 0, sizeof(msg));
 msg.msg_id = msg_id;
 msg.vpu_inst_addr = vpu->inst_addr;

 err = vcodec_vpu_send_msg(vpu, &msg, sizeof(msg));
 mtk_vcodec_debug(vpu, "- id=%X ret=%d", msg_id, err);
 return err;
}
