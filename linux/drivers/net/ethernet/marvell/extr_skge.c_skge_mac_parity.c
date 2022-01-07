
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skge_hw {scalar_t__ chip_id; scalar_t__ chip_rev; struct net_device** dev; } ;
struct TYPE_2__ {int tx_heartbeat_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 scalar_t__ CHIP_ID_YUKON ;
 int GMF_CLI_TX_FC ;
 int GMF_CLI_TX_PE ;
 int MFF_CLR_PERR ;
 int SK_REG (int,int ) ;
 int TX_GMF_CTRL_T ;
 int TX_MFF_CTRL1 ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int skge_write16 (struct skge_hw*,int ,int ) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;

__attribute__((used)) static void skge_mac_parity(struct skge_hw *hw, int port)
{
 struct net_device *dev = hw->dev[port];

 ++dev->stats.tx_heartbeat_errors;

 if (is_genesis(hw))
  skge_write16(hw, SK_REG(port, TX_MFF_CTRL1),
        MFF_CLR_PERR);
 else

  skge_write8(hw, SK_REG(port, TX_GMF_CTRL_T),
       (hw->chip_id == CHIP_ID_YUKON && hw->chip_rev == 0)
       ? GMF_CLI_TX_FC : GMF_CLI_TX_PE);
}
