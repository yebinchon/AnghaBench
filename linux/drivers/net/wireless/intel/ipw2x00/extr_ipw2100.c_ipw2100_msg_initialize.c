
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw2100_priv {int msg_free_stat; int msg_free_list; TYPE_1__* msg_buffers; int msg_pend_list; } ;
struct TYPE_2__ {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int IPW_COMMAND_POOL_SIZE ;
 int SET_STAT (int *,int) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int ipw2100_msg_initialize(struct ipw2100_priv *priv)
{
 int i;

 INIT_LIST_HEAD(&priv->msg_free_list);
 INIT_LIST_HEAD(&priv->msg_pend_list);

 for (i = 0; i < IPW_COMMAND_POOL_SIZE; i++)
  list_add_tail(&priv->msg_buffers[i].list, &priv->msg_free_list);
 SET_STAT(&priv->msg_free_stat, i);

 return 0;
}
