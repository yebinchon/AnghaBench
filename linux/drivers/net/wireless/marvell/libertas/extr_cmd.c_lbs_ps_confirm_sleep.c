
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {size_t resp_idx; int driver_lock; scalar_t__* resp_len; int event_fifo; scalar_t__ cur_cmd; scalar_t__ dnld_sent; } ;


 scalar_t__ kfifo_len (int *) ;
 int lbs_deb_host (char*) ;
 int lbs_send_confirmsleep (struct lbs_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void lbs_ps_confirm_sleep(struct lbs_private *priv)
{
 unsigned long flags =0;
 int allowed = 1;

 spin_lock_irqsave(&priv->driver_lock, flags);
 if (priv->dnld_sent) {
  allowed = 0;
  lbs_deb_host("dnld_sent was set\n");
 }


 if (priv->cur_cmd) {
  allowed = 0;
  lbs_deb_host("cur_cmd was set\n");
 }


 if (kfifo_len(&priv->event_fifo) || priv->resp_len[priv->resp_idx]) {
  allowed = 0;
  lbs_deb_host("pending events or command responses\n");
 }
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 if (allowed) {
  lbs_deb_host("sending lbs_ps_confirm_sleep\n");
  lbs_send_confirmsleep(priv);
 } else {
  lbs_deb_host("sleep confirm has been delayed\n");
 }
}
