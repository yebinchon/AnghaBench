
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_queue {TYPE_1__* head; } ;
struct ionic_lif {int adminq_lock; TYPE_2__* netdev; TYPE_3__* adminqcq; } ;
struct ionic_admin_ctx {int cmd; } ;
struct TYPE_6__ {struct ionic_queue q; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int desc; } ;


 int DUMP_PREFIX_OFFSET ;
 int ENOSPC ;
 int WARN_ON (int ) ;
 int dev_dbg (int *,char*) ;
 int dynamic_hex_dump (char*,int ,int,int,int *,int,int) ;
 int in_interrupt () ;
 int ionic_adminq_cb ;
 int ionic_q_has_space (struct ionic_queue*,int) ;
 int ionic_q_post (struct ionic_queue*,int,int ,struct ionic_admin_ctx*) ;
 int memcpy (int ,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ionic_adminq_post(struct ionic_lif *lif, struct ionic_admin_ctx *ctx)
{
 struct ionic_queue *adminq = &lif->adminqcq->q;
 int err = 0;

 WARN_ON(in_interrupt());

 spin_lock(&lif->adminq_lock);
 if (!ionic_q_has_space(adminq, 1)) {
  err = -ENOSPC;
  goto err_out;
 }

 memcpy(adminq->head->desc, &ctx->cmd, sizeof(ctx->cmd));

 dev_dbg(&lif->netdev->dev, "post admin queue command:\n");
 dynamic_hex_dump("cmd ", DUMP_PREFIX_OFFSET, 16, 1,
    &ctx->cmd, sizeof(ctx->cmd), 1);

 ionic_q_post(adminq, 1, ionic_adminq_cb, ctx);

err_out:
 spin_unlock(&lif->adminq_lock);

 return err;
}
