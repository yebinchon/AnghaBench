
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct altera_tse_private {unsigned int rx_fifo_depth; unsigned int tx_fifo_depth; int device; int mac_dev; TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned int mtu; int dev_addr; } ;


 unsigned int ALTERA_TSE_PAUSE_QUANTA ;
 unsigned int ALTERA_TSE_RX_ALMOST_EMPTY ;
 unsigned int ALTERA_TSE_RX_ALMOST_FULL ;
 int ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16 ;
 unsigned int ALTERA_TSE_RX_SECTION_EMPTY ;
 unsigned int ALTERA_TSE_RX_SECTION_FULL ;
 unsigned int ALTERA_TSE_TX_ALMOST_EMPTY ;
 unsigned int ALTERA_TSE_TX_ALMOST_FULL ;
 int ALTERA_TSE_TX_CMD_STAT_OMIT_CRC ;
 int ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16 ;
 unsigned int ALTERA_TSE_TX_IPG_LENGTH ;
 unsigned int ALTERA_TSE_TX_SECTION_EMPTY ;
 unsigned int ALTERA_TSE_TX_SECTION_FULL ;
 unsigned int ETH_FCS_LEN ;
 unsigned int ETH_HLEN ;
 unsigned int MAC_CMDCFG_CNTL_FRM_ENA ;
 unsigned int MAC_CMDCFG_CRC_FWD ;
 unsigned int MAC_CMDCFG_ENA_10 ;
 unsigned int MAC_CMDCFG_ETH_SPEED ;
 unsigned int MAC_CMDCFG_HD_ENA ;
 unsigned int MAC_CMDCFG_PAD_EN ;
 unsigned int MAC_CMDCFG_RX_ENA ;
 unsigned int MAC_CMDCFG_RX_ERR_DISC ;
 unsigned int MAC_CMDCFG_TX_ENA ;
 unsigned int command_config ;
 unsigned int csrrd32 (int ,int ) ;
 int csrwr32 (unsigned int,int ,int ) ;
 int dev_dbg (int ,char*,unsigned int) ;
 scalar_t__ netif_msg_hw (struct altera_tse_private*) ;
 unsigned int pause_quanta ;
 unsigned int rx_almost_empty ;
 unsigned int rx_almost_full ;
 unsigned int rx_cmd_stat ;
 unsigned int rx_section_empty ;
 unsigned int rx_section_full ;
 int tse_clear_bit (int ,int ,int) ;
 int tse_csroffs (unsigned int) ;
 int tse_set_bit (int ,int ,int ) ;
 int tse_update_mac_addr (struct altera_tse_private*,int ) ;
 unsigned int tx_almost_empty ;
 unsigned int tx_almost_full ;
 unsigned int tx_cmd_stat ;
 unsigned int tx_ipg_length ;
 unsigned int tx_section_empty ;
 unsigned int tx_section_full ;

__attribute__((used)) static int init_mac(struct altera_tse_private *priv)
{
 unsigned int cmd = 0;
 u32 frm_length;


 csrwr32(priv->rx_fifo_depth - ALTERA_TSE_RX_SECTION_EMPTY,
  priv->mac_dev, tse_csroffs(rx_section_empty));

 csrwr32(ALTERA_TSE_RX_SECTION_FULL, priv->mac_dev,
  tse_csroffs(rx_section_full));

 csrwr32(ALTERA_TSE_RX_ALMOST_EMPTY, priv->mac_dev,
  tse_csroffs(rx_almost_empty));

 csrwr32(ALTERA_TSE_RX_ALMOST_FULL, priv->mac_dev,
  tse_csroffs(rx_almost_full));


 csrwr32(priv->tx_fifo_depth - ALTERA_TSE_TX_SECTION_EMPTY,
  priv->mac_dev, tse_csroffs(tx_section_empty));

 csrwr32(ALTERA_TSE_TX_SECTION_FULL, priv->mac_dev,
  tse_csroffs(tx_section_full));

 csrwr32(ALTERA_TSE_TX_ALMOST_EMPTY, priv->mac_dev,
  tse_csroffs(tx_almost_empty));

 csrwr32(ALTERA_TSE_TX_ALMOST_FULL, priv->mac_dev,
  tse_csroffs(tx_almost_full));


 tse_update_mac_addr(priv, priv->dev->dev_addr);


 frm_length = ETH_HLEN + priv->dev->mtu + ETH_FCS_LEN;
 csrwr32(frm_length, priv->mac_dev, tse_csroffs(frm_length));

 csrwr32(ALTERA_TSE_TX_IPG_LENGTH, priv->mac_dev,
  tse_csroffs(tx_ipg_length));




 tse_set_bit(priv->mac_dev, tse_csroffs(rx_cmd_stat),
      ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16);

 tse_clear_bit(priv->mac_dev, tse_csroffs(tx_cmd_stat),
        ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16 |
        ALTERA_TSE_TX_CMD_STAT_OMIT_CRC);


 cmd = csrrd32(priv->mac_dev, tse_csroffs(command_config));
 cmd &= ~MAC_CMDCFG_PAD_EN;
 cmd &= ~MAC_CMDCFG_CRC_FWD;
 cmd |= MAC_CMDCFG_RX_ERR_DISC;


 cmd |= MAC_CMDCFG_CNTL_FRM_ENA;
 cmd &= ~MAC_CMDCFG_TX_ENA;
 cmd &= ~MAC_CMDCFG_RX_ENA;


 cmd &= ~MAC_CMDCFG_HD_ENA;
 cmd &= ~MAC_CMDCFG_ETH_SPEED;
 cmd &= ~MAC_CMDCFG_ENA_10;

 csrwr32(cmd, priv->mac_dev, tse_csroffs(command_config));

 csrwr32(ALTERA_TSE_PAUSE_QUANTA, priv->mac_dev,
  tse_csroffs(pause_quanta));

 if (netif_msg_hw(priv))
  dev_dbg(priv->device,
   "MAC post-initialization: CMD_CONFIG = 0x%08x\n", cmd);

 return 0;
}
