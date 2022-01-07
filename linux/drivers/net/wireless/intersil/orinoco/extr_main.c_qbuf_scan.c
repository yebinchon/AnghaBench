
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_scan_data {int len; int type; int list; void* buf; } ;
struct orinoco_private {int process_scan; int scan_lock; int scan_list; } ;


 int GFP_ATOMIC ;
 struct orinoco_scan_data* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qbuf_scan(struct orinoco_private *priv, void *buf,
        int len, int type)
{
 struct orinoco_scan_data *sd;
 unsigned long flags;

 sd = kmalloc(sizeof(*sd), GFP_ATOMIC);
 if (!sd)
  return;

 sd->buf = buf;
 sd->len = len;
 sd->type = type;

 spin_lock_irqsave(&priv->scan_lock, flags);
 list_add_tail(&sd->list, &priv->scan_list);
 spin_unlock_irqrestore(&priv->scan_lock, flags);

 schedule_work(&priv->process_scan);
}
