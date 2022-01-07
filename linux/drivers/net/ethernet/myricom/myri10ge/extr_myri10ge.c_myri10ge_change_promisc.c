
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myri10ge_priv {int dev; } ;
struct myri10ge_cmd {int dummy; } ;


 int MXGEFW_DISABLE_PROMISC ;
 int MXGEFW_ENABLE_PROMISC ;
 int myri10ge_send_cmd (struct myri10ge_priv*,int,struct myri10ge_cmd*,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void
myri10ge_change_promisc(struct myri10ge_priv *mgp, int promisc, int atomic)
{
 struct myri10ge_cmd cmd;
 int status, ctl;

 ctl = promisc ? MXGEFW_ENABLE_PROMISC : MXGEFW_DISABLE_PROMISC;
 status = myri10ge_send_cmd(mgp, ctl, &cmd, atomic);
 if (status)
  netdev_err(mgp->dev, "Failed to set promisc mode\n");
}
