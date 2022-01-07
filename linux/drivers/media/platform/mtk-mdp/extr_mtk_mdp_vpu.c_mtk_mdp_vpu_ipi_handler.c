
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_mdp_vpu {int failure; } ;
struct mtk_mdp_ctx {int id; TYPE_2__* mdp_dev; } ;
struct mdp_ipi_comm_ack {int status; scalar_t__ ap_inst; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;





 int dev_err (int *,char*,unsigned int) ;
 int mtk_mdp_dbg (int ,char*,int ,unsigned int,int ) ;
 int mtk_mdp_vpu_handle_init_ack (void*) ;
 struct mtk_mdp_ctx* vpu_to_ctx (struct mtk_mdp_vpu*) ;

__attribute__((used)) static void mtk_mdp_vpu_ipi_handler(void *data, unsigned int len, void *priv)
{
 unsigned int msg_id = *(unsigned int *)data;
 struct mdp_ipi_comm_ack *msg = (struct mdp_ipi_comm_ack *)data;
 struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
     (unsigned long)msg->ap_inst;
 struct mtk_mdp_ctx *ctx;

 vpu->failure = msg->status;
 if (!vpu->failure) {
  switch (msg_id) {
  case 129:
   mtk_mdp_vpu_handle_init_ack(data);
   break;
  case 130:
  case 128:
   break;
  default:
   ctx = vpu_to_ctx(vpu);
   dev_err(&ctx->mdp_dev->pdev->dev,
    "handle unknown ipi msg:0x%x\n",
    msg_id);
   break;
  }
 } else {
  ctx = vpu_to_ctx(vpu);
  mtk_mdp_dbg(0, "[%d]:msg 0x%x, failure:%d", ctx->id,
       msg_id, vpu->failure);
 }
}
