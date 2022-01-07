
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpni_buffer_layout {int options; scalar_t__ data_head_room; int member_0; } ;
struct dpaa2_eth_priv {int net_dev; int mc_token; int mc_io; } ;


 int DPNI_BUF_LAYOUT_OPT_DATA_HEAD_ROOM ;
 int DPNI_QUEUE_RX ;
 int XDP_PACKET_HEADROOM ;
 scalar_t__ dpaa2_eth_rx_head_room (struct dpaa2_eth_priv*) ;
 int dpni_get_buffer_layout (int ,int ,int ,int ,struct dpni_buffer_layout*) ;
 int dpni_set_buffer_layout (int ,int ,int ,int ,struct dpni_buffer_layout*) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int update_rx_buffer_headroom(struct dpaa2_eth_priv *priv, bool has_xdp)
{
 struct dpni_buffer_layout buf_layout = {0};
 int err;

 err = dpni_get_buffer_layout(priv->mc_io, 0, priv->mc_token,
         DPNI_QUEUE_RX, &buf_layout);
 if (err) {
  netdev_err(priv->net_dev, "dpni_get_buffer_layout failed\n");
  return err;
 }


 buf_layout.data_head_room = dpaa2_eth_rx_head_room(priv) +
        (has_xdp ? XDP_PACKET_HEADROOM : 0);
 buf_layout.options = DPNI_BUF_LAYOUT_OPT_DATA_HEAD_ROOM;
 err = dpni_set_buffer_layout(priv->mc_io, 0, priv->mc_token,
         DPNI_QUEUE_RX, &buf_layout);
 if (err) {
  netdev_err(priv->net_dev, "dpni_set_buffer_layout failed\n");
  return err;
 }

 return 0;
}
