
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int driver_lock; int cmdpendingq; int cmdfreeq; int command_timer; int * vif; int lock; int current_addr; } ;


 int INIT_LIST_HEAD (int *) ;
 int LBTF_DEB_MAIN ;
 int command_timer_fn ;
 int eth_broadcast_addr (int ) ;
 scalar_t__ lbtf_allocate_cmd_buffer (struct lbtf_private*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int lbtf_init_adapter(struct lbtf_private *priv)
{
 lbtf_deb_enter(LBTF_DEB_MAIN);
 eth_broadcast_addr(priv->current_addr);
 mutex_init(&priv->lock);

 priv->vif = ((void*)0);
 timer_setup(&priv->command_timer, command_timer_fn, 0);

 INIT_LIST_HEAD(&priv->cmdfreeq);
 INIT_LIST_HEAD(&priv->cmdpendingq);

 spin_lock_init(&priv->driver_lock);


 if (lbtf_allocate_cmd_buffer(priv))
  return -1;

 lbtf_deb_leave(LBTF_DEB_MAIN);
 return 0;
}
