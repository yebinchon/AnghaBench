
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_session_ctx {int used; } ;
struct fastrpc_channel_ctx {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fastrpc_session_free(struct fastrpc_channel_ctx *cctx,
     struct fastrpc_session_ctx *session)
{
 unsigned long flags;

 spin_lock_irqsave(&cctx->lock, flags);
 session->used = 0;
 spin_unlock_irqrestore(&cctx->lock, flags);
}
