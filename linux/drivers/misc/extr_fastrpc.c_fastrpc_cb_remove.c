
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct fastrpc_session_ctx {scalar_t__ sid; } ;
struct fastrpc_channel_ctx {int lock; int sesscount; TYPE_1__* session; } ;
struct TYPE_3__ {scalar_t__ sid; int valid; } ;


 int FASTRPC_MAX_SESSIONS ;
 void* dev_get_drvdata (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fastrpc_cb_remove(struct platform_device *pdev)
{
 struct fastrpc_channel_ctx *cctx = dev_get_drvdata(pdev->dev.parent);
 struct fastrpc_session_ctx *sess = dev_get_drvdata(&pdev->dev);
 unsigned long flags;
 int i;

 spin_lock_irqsave(&cctx->lock, flags);
 for (i = 1; i < FASTRPC_MAX_SESSIONS; i++) {
  if (cctx->session[i].sid == sess->sid) {
   cctx->session[i].valid = 0;
   cctx->sesscount--;
  }
 }
 spin_unlock_irqrestore(&cctx->lock, flags);

 return 0;
}
