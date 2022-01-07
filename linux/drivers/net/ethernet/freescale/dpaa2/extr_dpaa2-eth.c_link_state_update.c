
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpni_link_state {int options; scalar_t__ up; int member_0; } ;
struct dpaa2_eth_priv {struct dpni_link_state link_state; int net_dev; int mc_token; int mc_io; } ;


 int DPNI_LINK_OPT_ASYM_PAUSE ;
 int DPNI_LINK_OPT_PAUSE ;
 int dpaa2_eth_set_rx_taildrop (struct dpaa2_eth_priv*,int) ;
 int dpni_get_link_state (int ,int ,int ,struct dpni_link_state*) ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_start_all_queues (int ) ;
 int netif_tx_stop_all_queues (int ) ;
 scalar_t__ unlikely (int) ;
 int update_tx_fqids (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int link_state_update(struct dpaa2_eth_priv *priv)
{
 struct dpni_link_state state = {0};
 bool tx_pause;
 int err;

 err = dpni_get_link_state(priv->mc_io, 0, priv->mc_token, &state);
 if (unlikely(err)) {
  netdev_err(priv->net_dev,
      "dpni_get_link_state() failed\n");
  return err;
 }





 tx_pause = !!(state.options & DPNI_LINK_OPT_PAUSE) ^
     !!(state.options & DPNI_LINK_OPT_ASYM_PAUSE);
 dpaa2_eth_set_rx_taildrop(priv, !tx_pause);


 if (priv->link_state.up == state.up)
  goto out;

 if (state.up) {
  update_tx_fqids(priv);
  netif_carrier_on(priv->net_dev);
  netif_tx_start_all_queues(priv->net_dev);
 } else {
  netif_tx_stop_all_queues(priv->net_dev);
  netif_carrier_off(priv->net_dev);
 }

 netdev_info(priv->net_dev, "Link Event: state %s\n",
      state.up ? "up" : "down");

out:
 priv->link_state = state;

 return 0;
}
