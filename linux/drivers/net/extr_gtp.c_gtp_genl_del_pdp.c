
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct TYPE_5__ {int o_tei; int i_tei; } ;
struct TYPE_4__ {int tid; } ;
struct TYPE_6__ {TYPE_2__ v1; TYPE_1__ v0; } ;
struct pdp_ctx {scalar_t__ gtp_version; TYPE_3__ u; int dev; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 size_t GTPA_VERSION ;
 scalar_t__ GTP_V0 ;
 scalar_t__ GTP_V1 ;
 scalar_t__ IS_ERR (struct pdp_ctx*) ;
 int PTR_ERR (struct pdp_ctx*) ;
 struct pdp_ctx* gtp_find_pdp (int ,int *) ;
 int netdev_dbg (int ,char*,int ,struct pdp_ctx*,...) ;
 int pdp_context_delete (struct pdp_ctx*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int gtp_genl_del_pdp(struct sk_buff *skb, struct genl_info *info)
{
 struct pdp_ctx *pctx;
 int err = 0;

 if (!info->attrs[GTPA_VERSION])
  return -EINVAL;

 rcu_read_lock();

 pctx = gtp_find_pdp(sock_net(skb->sk), info->attrs);
 if (IS_ERR(pctx)) {
  err = PTR_ERR(pctx);
  goto out_unlock;
 }

 if (pctx->gtp_version == GTP_V0)
  netdev_dbg(pctx->dev, "GTPv0-U: deleting tunnel id = %llx (pdp %p)\n",
      pctx->u.v0.tid, pctx);
 else if (pctx->gtp_version == GTP_V1)
  netdev_dbg(pctx->dev, "GTPv1-U: deleting tunnel id = %x/%x (pdp %p)\n",
      pctx->u.v1.i_tei, pctx->u.v1.o_tei, pctx);

 pdp_context_delete(pctx);

out_unlock:
 rcu_read_unlock();
 return err;
}
