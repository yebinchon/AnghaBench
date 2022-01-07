
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_session_ctx {int used; scalar_t__ valid; } ;
struct fastrpc_channel_ctx {int sesscount; int lock; struct fastrpc_session_ctx* session; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct fastrpc_session_ctx *fastrpc_session_alloc(
     struct fastrpc_channel_ctx *cctx)
{
 struct fastrpc_session_ctx *session = ((void*)0);
 unsigned long flags;
 int i;

 spin_lock_irqsave(&cctx->lock, flags);
 for (i = 0; i < cctx->sesscount; i++) {
  if (!cctx->session[i].used && cctx->session[i].valid) {
   cctx->session[i].used = 1;
   session = &cctx->session[i];
   break;
  }
 }
 spin_unlock_irqrestore(&cctx->lock, flags);

 return session;
}
