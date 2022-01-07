
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int txbd_wrptr; int rxbd_rdptr; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int tx_wrap_mask; int rx_rdptr; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ERROR ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;

__attribute__((used)) static int mwifiex_pcie_init_fw_port(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 int tx_wrap = card->txbd_wrptr & reg->tx_wrap_mask;


 if (mwifiex_write_reg(adapter, reg->rx_rdptr, card->rxbd_rdptr |
         tx_wrap)) {
  mwifiex_dbg(adapter, ERROR,
       "RECV DATA: failed to write reg->rx_rdptr\n");
  return -1;
 }
 return 0;
}
