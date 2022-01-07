
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int dummy; } ;


 int DPAA2_ETH_LINK_STATE_REFRESH ;
 int kthread_should_stop () ;
 int link_state_update (struct dpaa2_eth_priv*) ;
 int msleep (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int poll_link_state(void *arg)
{
 struct dpaa2_eth_priv *priv = (struct dpaa2_eth_priv *)arg;
 int err;

 while (!kthread_should_stop()) {
  err = link_state_update(priv);
  if (unlikely(err))
   return err;

  msleep(DPAA2_ETH_LINK_STATE_REFRESH);
 }

 return 0;
}
