
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpu_ipi_desc {int priv; int (* handler ) (int ,int ,int ) ;} ;
struct share_obj {size_t id; int len; int share_buf; } ;
struct mtk_vpu {int* ipi_id_ack; int dev; int ack_wq; struct vpu_ipi_desc* ipi_desc; struct share_obj* recv_buf; } ;


 size_t IPI_MAX ;
 size_t IPI_VPU_INIT ;
 int dev_err (int ,char*,size_t) ;
 int stub1 (int ,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void vpu_ipi_handler(struct mtk_vpu *vpu)
{
 struct share_obj *rcv_obj = vpu->recv_buf;
 struct vpu_ipi_desc *ipi_desc = vpu->ipi_desc;

 if (rcv_obj->id < IPI_MAX && ipi_desc[rcv_obj->id].handler) {
  ipi_desc[rcv_obj->id].handler(rcv_obj->share_buf,
           rcv_obj->len,
           ipi_desc[rcv_obj->id].priv);
  if (rcv_obj->id > IPI_VPU_INIT) {
   vpu->ipi_id_ack[rcv_obj->id] = 1;
   wake_up(&vpu->ack_wq);
  }
 } else {
  dev_err(vpu->dev, "No such ipi id = %d\n", rcv_obj->id);
 }
}
