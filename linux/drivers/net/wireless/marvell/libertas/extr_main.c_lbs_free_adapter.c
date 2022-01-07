
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int auto_deepsleep_timer; int tx_lockup_timer; int command_timer; int event_fifo; } ;


 int del_timer (int *) ;
 int kfifo_free (int *) ;
 int lbs_free_cmd_buffer (struct lbs_private*) ;

__attribute__((used)) static void lbs_free_adapter(struct lbs_private *priv)
{
 lbs_free_cmd_buffer(priv);
 kfifo_free(&priv->event_fifo);
 del_timer(&priv->command_timer);
 del_timer(&priv->tx_lockup_timer);
 del_timer(&priv->auto_deepsleep_timer);
}
