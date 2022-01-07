
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct lbs_private {int cmd_timed_out; scalar_t__ dnld_sent; int driver_lock; int waitq; TYPE_2__* cur_cmd; int dev; } ;
struct TYPE_4__ {TYPE_1__* cmdbuf; } ;
struct TYPE_3__ {int command; } ;


 scalar_t__ DNLD_CMD_SENT ;
 scalar_t__ DNLD_RES_RECEIVED ;
 int command_timer ;
 struct lbs_private* from_timer (int ,struct timer_list*,int ) ;
 int le16_to_cpu (int ) ;
 int netdev_info (int ,char*,int ) ;
 struct lbs_private* priv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void lbs_cmd_timeout_handler(struct timer_list *t)
{
 struct lbs_private *priv = from_timer(priv, t, command_timer);
 unsigned long flags;

 spin_lock_irqsave(&priv->driver_lock, flags);

 if (!priv->cur_cmd)
  goto out;

 netdev_info(priv->dev, "command 0x%04x timed out\n",
      le16_to_cpu(priv->cur_cmd->cmdbuf->command));

 priv->cmd_timed_out = 1;





 if (priv->dnld_sent == DNLD_CMD_SENT)
  priv->dnld_sent = DNLD_RES_RECEIVED;

 wake_up(&priv->waitq);
out:
 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
