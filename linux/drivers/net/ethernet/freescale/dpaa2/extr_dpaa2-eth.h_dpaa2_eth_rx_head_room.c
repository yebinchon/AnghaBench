
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {unsigned int tx_data_offset; } ;


 unsigned int DPAA2_ETH_RX_HWA_SIZE ;

__attribute__((used)) static inline unsigned int dpaa2_eth_rx_head_room(struct dpaa2_eth_priv *priv)
{
 return priv->tx_data_offset - DPAA2_ETH_RX_HWA_SIZE;
}
