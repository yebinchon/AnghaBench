
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vpu_inst {int dummy; } ;


 int AP_IPIMSG_DEC_END ;
 int vcodec_send_ap_ipi (struct vdec_vpu_inst*,int ) ;

int vpu_dec_end(struct vdec_vpu_inst *vpu)
{
 return vcodec_send_ap_ipi(vpu, AP_IPIMSG_DEC_END);
}
