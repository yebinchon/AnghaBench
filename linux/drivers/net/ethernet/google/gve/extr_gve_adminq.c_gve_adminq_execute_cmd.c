
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union gve_adminq_command {int status; } ;
typedef size_t u32 ;
struct gve_priv {size_t adminq_prod_cnt; size_t adminq_mask; TYPE_1__* pdev; union gve_adminq_command* adminq; } ;
struct TYPE_2__ {int dev; } ;


 int ENOTRECOVERABLE ;
 int READ_ONCE (int ) ;
 size_t be32_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int gve_adminq_kick_cmd (struct gve_priv*,size_t) ;
 int gve_adminq_parse_err (int *,size_t) ;
 int gve_adminq_wait_for_cmd (struct gve_priv*,size_t) ;
 int memcpy (union gve_adminq_command*,union gve_adminq_command*,int) ;

int gve_adminq_execute_cmd(struct gve_priv *priv,
      union gve_adminq_command *cmd_orig)
{
 union gve_adminq_command *cmd;
 u32 status = 0;
 u32 prod_cnt;

 cmd = &priv->adminq[priv->adminq_prod_cnt & priv->adminq_mask];
 priv->adminq_prod_cnt++;
 prod_cnt = priv->adminq_prod_cnt;

 memcpy(cmd, cmd_orig, sizeof(*cmd_orig));

 gve_adminq_kick_cmd(priv, prod_cnt);
 if (!gve_adminq_wait_for_cmd(priv, prod_cnt)) {
  dev_err(&priv->pdev->dev, "AQ command timed out, need to reset AQ\n");
  return -ENOTRECOVERABLE;
 }

 memcpy(cmd_orig, cmd, sizeof(*cmd));
 status = be32_to_cpu(READ_ONCE(cmd->status));
 return gve_adminq_parse_err(&priv->pdev->dev, status);
}
