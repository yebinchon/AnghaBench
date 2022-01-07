
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dev; } ;
struct cmd_header {int dummy; } ;
typedef int cmd ;


 int CMD_802_11_DEEP_SLEEP ;
 int __lbs_cmd (struct lbs_private*,int ,struct cmd_header*,int,int ,unsigned long) ;
 int lbs_cmd_copyback ;
 int lbs_deb_sdio (char*) ;
 int mdelay (int) ;
 int memset (struct cmd_header*,int ,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int if_sdio_enter_deep_sleep(struct lbs_private *priv)
{
 int ret = -1;
 struct cmd_header cmd;

 memset(&cmd, 0, sizeof(cmd));

 lbs_deb_sdio("send DEEP_SLEEP command\n");
 ret = __lbs_cmd(priv, CMD_802_11_DEEP_SLEEP, &cmd, sizeof(cmd),
   lbs_cmd_copyback, (unsigned long) &cmd);
 if (ret)
  netdev_err(priv->dev, "DEEP_SLEEP cmd failed\n");

 mdelay(200);
 return ret;
}
