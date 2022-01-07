
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vdec_vpu_inst {int failure; int id; int dev; scalar_t__ signaled; } ;


 int mtk_vcodec_debug (struct vdec_vpu_inst*,char*,int ) ;
 int mtk_vcodec_err (struct vdec_vpu_inst*,char*,int ,int ,int) ;
 int vpu_ipi_send (int ,int ,void*,int) ;

__attribute__((used)) static int vcodec_vpu_send_msg(struct vdec_vpu_inst *vpu, void *msg, int len)
{
 int err;

 mtk_vcodec_debug(vpu, "id=%X", *(uint32_t *)msg);

 vpu->failure = 0;
 vpu->signaled = 0;

 err = vpu_ipi_send(vpu->dev, vpu->id, msg, len);
 if (err) {
  mtk_vcodec_err(vpu, "send fail vpu_id=%d msg_id=%X status=%d",
          vpu->id, *(uint32_t *)msg, err);
  return err;
 }

 return vpu->failure;
}
