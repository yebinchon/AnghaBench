
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int is_host_sleep_activated; int host_sleep_q; } ;
struct cmd_header {int dummy; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static int lbs_ret_host_sleep_activate(struct lbs_private *priv,
  unsigned long dummy,
  struct cmd_header *cmd)
{
 priv->is_host_sleep_activated = 1;
 wake_up_interruptible(&priv->host_sleep_q);

 return 0;
}
