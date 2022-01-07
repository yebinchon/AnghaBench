
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u32 ;
struct fastrpc_user {int pd; scalar_t__ tgid; struct fastrpc_channel_ctx* cctx; } ;
struct fastrpc_session_ctx {int dummy; } ;
struct fastrpc_msg {int ctx; int size; int addr; int sc; int handle; scalar_t__ pid; int tid; } ;
struct fastrpc_invoke_ctx {int ctxid; int msg_sz; TYPE_1__* buf; int sc; struct fastrpc_msg msg; struct fastrpc_user* fl; } ;
struct fastrpc_channel_ctx {TYPE_2__* rpdev; } ;
struct TYPE_6__ {int pid; } ;
struct TYPE_5__ {int ept; } ;
struct TYPE_4__ {int phys; } ;


 int PAGE_SIZE ;
 TYPE_3__* current ;
 int fastrpc_context_get (struct fastrpc_invoke_ctx*) ;
 int roundup (int ,int ) ;
 int rpmsg_send (int ,void*,int) ;

__attribute__((used)) static int fastrpc_invoke_send(struct fastrpc_session_ctx *sctx,
          struct fastrpc_invoke_ctx *ctx,
          u32 kernel, uint32_t handle)
{
 struct fastrpc_channel_ctx *cctx;
 struct fastrpc_user *fl = ctx->fl;
 struct fastrpc_msg *msg = &ctx->msg;

 cctx = fl->cctx;
 msg->pid = fl->tgid;
 msg->tid = current->pid;

 if (kernel)
  msg->pid = 0;

 msg->ctx = ctx->ctxid | fl->pd;
 msg->handle = handle;
 msg->sc = ctx->sc;
 msg->addr = ctx->buf ? ctx->buf->phys : 0;
 msg->size = roundup(ctx->msg_sz, PAGE_SIZE);
 fastrpc_context_get(ctx);

 return rpmsg_send(cctx->rpdev->ept, (void *)msg, sizeof(*msg));
}
