
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int driver_lock; int fw_waitq; int (* fw_callback ) (struct lbs_private*,int,struct firmware const*,struct firmware const*) ;} ;
struct firmware {int dummy; } ;


 int lbs_deb_fw (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct lbs_private*,int,struct firmware const*,struct firmware const*) ;
 int wake_up (int *) ;

__attribute__((used)) static void lbs_fw_loaded(struct lbs_private *priv, int ret,
 const struct firmware *helper, const struct firmware *mainfw)
{
 unsigned long flags;

 lbs_deb_fw("firmware load complete, code %d\n", ret);


 priv->fw_callback(priv, ret, helper, mainfw);

 spin_lock_irqsave(&priv->driver_lock, flags);
 priv->fw_callback = ((void*)0);
 wake_up(&priv->fw_waitq);
 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
