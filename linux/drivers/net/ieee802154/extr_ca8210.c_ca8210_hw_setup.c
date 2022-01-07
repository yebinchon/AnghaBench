
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee802154_hw {int flags; TYPE_3__* phy; } ;
struct TYPE_5__ {int opt; int mode; } ;
struct TYPE_4__ {int cca_ed_levels; int cca_ed_levels_size; int tx_powers; int tx_powers_size; int * channels; } ;
struct TYPE_6__ {int current_channel; int transmit_power; int cca_ed_level; int symbol_duration; int lifs_period; int sifs_period; int flags; TYPE_2__ cca; scalar_t__ current_page; TYPE_1__ supported; } ;


 int CA8210_MAX_ED_LEVELS ;
 int CA8210_MAX_TX_POWERS ;
 int CA8210_VALID_CHANNELS ;
 int IEEE802154_HW_AFILT ;
 int IEEE802154_HW_CSMA_PARAMS ;
 int IEEE802154_HW_FRAME_RETRIES ;
 int IEEE802154_HW_OMIT_CKSUM ;
 int IEEE802154_HW_PROMISCUOUS ;
 int NL802154_CCA_ENERGY_CARRIER ;
 int NL802154_CCA_OPT_ENERGY_CARRIER_AND ;
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ;
 int WPAN_PHY_FLAG_CCA_MODE ;
 int WPAN_PHY_FLAG_TXPOWER ;
 int ca8210_ed_levels ;
 int ca8210_tx_powers ;

__attribute__((used)) static void ca8210_hw_setup(struct ieee802154_hw *ca8210_hw)
{

 ca8210_hw->phy->supported.channels[0] = CA8210_VALID_CHANNELS;
 ca8210_hw->phy->supported.tx_powers_size = CA8210_MAX_TX_POWERS;
 ca8210_hw->phy->supported.tx_powers = ca8210_tx_powers;
 ca8210_hw->phy->supported.cca_ed_levels_size = CA8210_MAX_ED_LEVELS;
 ca8210_hw->phy->supported.cca_ed_levels = ca8210_ed_levels;
 ca8210_hw->phy->current_channel = 18;
 ca8210_hw->phy->current_page = 0;
 ca8210_hw->phy->transmit_power = 800;
 ca8210_hw->phy->cca.mode = NL802154_CCA_ENERGY_CARRIER;
 ca8210_hw->phy->cca.opt = NL802154_CCA_OPT_ENERGY_CARRIER_AND;
 ca8210_hw->phy->cca_ed_level = -9800;
 ca8210_hw->phy->symbol_duration = 16;
 ca8210_hw->phy->lifs_period = 40;
 ca8210_hw->phy->sifs_period = 12;
 ca8210_hw->flags =
  IEEE802154_HW_AFILT |
  IEEE802154_HW_OMIT_CKSUM |
  IEEE802154_HW_FRAME_RETRIES |
  IEEE802154_HW_PROMISCUOUS |
  IEEE802154_HW_CSMA_PARAMS;
 ca8210_hw->phy->flags =
  WPAN_PHY_FLAG_TXPOWER |
  WPAN_PHY_FLAG_CCA_ED_LEVEL |
  WPAN_PHY_FLAG_CCA_MODE;
}
