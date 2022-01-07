
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ionic_queue {TYPE_1__* lif; } ;
struct ionic_desc_info {int dummy; } ;
struct ionic_cq_info {struct ionic_admin_comp* cq_desc; } ;
struct ionic_admin_ctx {int work; int comp; } ;
struct ionic_admin_comp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {TYPE_2__* netdev; } ;


 int DUMP_PREFIX_OFFSET ;
 int complete_all (int *) ;
 int dev_dbg (struct device*,char*) ;
 int dynamic_hex_dump (char*,int ,int,int,int *,int,int) ;
 int memcpy (int *,struct ionic_admin_comp*,int) ;

__attribute__((used)) static void ionic_adminq_cb(struct ionic_queue *q,
       struct ionic_desc_info *desc_info,
       struct ionic_cq_info *cq_info, void *cb_arg)
{
 struct ionic_admin_ctx *ctx = cb_arg;
 struct ionic_admin_comp *comp;
 struct device *dev;

 if (!ctx)
  return;

 comp = cq_info->cq_desc;
 dev = &q->lif->netdev->dev;

 memcpy(&ctx->comp, comp, sizeof(*comp));

 dev_dbg(dev, "comp admin queue command:\n");
 dynamic_hex_dump("comp ", DUMP_PREFIX_OFFSET, 16, 1,
    &ctx->comp, sizeof(ctx->comp), 1);

 complete_all(&ctx->work);
}
