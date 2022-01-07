
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_bhf_priv {scalar_t__ mac_io; scalar_t__ fifo_io; } ;


 scalar_t__ FIFO_RX_RESET ;
 scalar_t__ FIFO_TX_RESET ;
 scalar_t__ MAC_CRC_ERR_CNT ;
 scalar_t__ MAC_DROPPED_FRMS ;
 scalar_t__ MAC_FRAME_ERR_CNT ;
 scalar_t__ MAC_LNK_LST_ERR_CNT ;
 scalar_t__ MAC_RX_ERR_CNT ;
 scalar_t__ MAC_RX_FRAME_CNT ;
 scalar_t__ MAC_TX_FIFO_LVL ;
 scalar_t__ MAC_TX_FRAME_CNT ;
 int iowrite32 (int ,scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void ec_bhf_reset(struct ec_bhf_priv *priv)
{
 iowrite8(0, priv->mac_io + MAC_FRAME_ERR_CNT);
 iowrite8(0, priv->mac_io + MAC_RX_ERR_CNT);
 iowrite8(0, priv->mac_io + MAC_CRC_ERR_CNT);
 iowrite8(0, priv->mac_io + MAC_LNK_LST_ERR_CNT);
 iowrite32(0, priv->mac_io + MAC_TX_FRAME_CNT);
 iowrite32(0, priv->mac_io + MAC_RX_FRAME_CNT);
 iowrite8(0, priv->mac_io + MAC_DROPPED_FRMS);

 iowrite8(0, priv->fifo_io + FIFO_TX_RESET);
 iowrite8(0, priv->fifo_io + FIFO_RX_RESET);

 iowrite8(0, priv->mac_io + MAC_TX_FIFO_LVL);
}
