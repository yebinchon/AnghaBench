
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int lock; int wait_state; int wait_command_queue; } ;


 int IPW_DEBUG_TRACE (char*) ;
 int STATUS_HCMD_ACTIVE ;
 int STATUS_SCANNING ;
 int STATUS_SCAN_ABORTING ;
 int ipw_init_nic (struct ipw_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ipw_reset_nic(struct ipw_priv *priv)
{
 int rc = 0;
 unsigned long flags;

 IPW_DEBUG_TRACE(">>\n");

 rc = ipw_init_nic(priv);

 spin_lock_irqsave(&priv->lock, flags);

 priv->status &= ~STATUS_HCMD_ACTIVE;
 wake_up_interruptible(&priv->wait_command_queue);
 priv->status &= ~(STATUS_SCANNING | STATUS_SCAN_ABORTING);
 wake_up_interruptible(&priv->wait_state);
 spin_unlock_irqrestore(&priv->lock, flags);

 IPW_DEBUG_TRACE("<<\n");
 return rc;
}
