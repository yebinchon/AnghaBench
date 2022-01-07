
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_vpu_ipi_msg_init {int vpu_inst_addr; } ;
struct venc_vpu_inst {int dev; int vsi; int inst_addr; } ;


 int vpu_mapping_dm_addr (int ,int ) ;

__attribute__((used)) static void handle_enc_init_msg(struct venc_vpu_inst *vpu, void *data)
{
 struct venc_vpu_ipi_msg_init *msg = data;

 vpu->inst_addr = msg->vpu_inst_addr;
 vpu->vsi = vpu_mapping_dm_addr(vpu->dev, msg->vpu_inst_addr);
}
