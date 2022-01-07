
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myri10ge_priv {int pause; int dev; } ;
struct myri10ge_cmd {int dummy; } ;


 int MXGEFW_DISABLE_FLOW_CONTROL ;
 int MXGEFW_ENABLE_FLOW_CONTROL ;
 int myri10ge_send_cmd (struct myri10ge_priv*,int,struct myri10ge_cmd*,int ) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int myri10ge_change_pause(struct myri10ge_priv *mgp, int pause)
{
 struct myri10ge_cmd cmd;
 int status, ctl;

 ctl = pause ? MXGEFW_ENABLE_FLOW_CONTROL : MXGEFW_DISABLE_FLOW_CONTROL;
 status = myri10ge_send_cmd(mgp, ctl, &cmd, 0);

 if (status) {
  netdev_err(mgp->dev, "Failed to set flow control mode\n");
  return status;
 }
 mgp->pause = pause;
 return 0;
}
