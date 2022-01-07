
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct net_device {int dummy; } ;
struct ionic_lif {struct net_device* netdev; } ;
struct TYPE_3__ {int opcode; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct ionic_admin_ctx {int work; TYPE_2__ cmd; } ;


 scalar_t__ DEVCMD_TIMEOUT ;
 int HZ ;
 int ionic_adminq_check_err (struct ionic_lif*,struct ionic_admin_ctx*,int) ;
 int ionic_adminq_post (struct ionic_lif*,struct ionic_admin_ctx*) ;
 char* ionic_opcode_to_str (int ) ;
 int netdev_err (struct net_device*,char*,char const*,int ,int) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

int ionic_adminq_post_wait(struct ionic_lif *lif, struct ionic_admin_ctx *ctx)
{
 struct net_device *netdev = lif->netdev;
 unsigned long remaining;
 const char *name;
 int err;

 err = ionic_adminq_post(lif, ctx);
 if (err) {
  name = ionic_opcode_to_str(ctx->cmd.cmd.opcode);
  netdev_err(netdev, "Posting of %s (%d) failed: %d\n",
      name, ctx->cmd.cmd.opcode, err);
  return err;
 }

 remaining = wait_for_completion_timeout(&ctx->work,
      HZ * (ulong)DEVCMD_TIMEOUT);
 return ionic_adminq_check_err(lif, ctx, (remaining == 0));
}
