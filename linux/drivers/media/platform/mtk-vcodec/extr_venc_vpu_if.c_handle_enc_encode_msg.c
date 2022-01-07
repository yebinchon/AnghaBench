
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_vpu_ipi_msg_enc {int is_key_frm; int bs_size; int state; } ;
struct venc_vpu_inst {int is_key_frm; int bs_size; int state; } ;



__attribute__((used)) static void handle_enc_encode_msg(struct venc_vpu_inst *vpu, void *data)
{
 struct venc_vpu_ipi_msg_enc *msg = data;

 vpu->state = msg->state;
 vpu->bs_size = msg->bs_size;
 vpu->is_key_frm = msg->is_key_frm;
}
