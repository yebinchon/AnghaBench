
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {scalar_t__ sleep_cookie; int fw_status; } ;
struct mwifiex_adapter {int ps_state; struct pcie_service_card* card; } ;


 int ERROR ;
 int EVENT ;
 int FIRMWARE_READY_PCIE ;
 int INFO ;
 int PS_STATE_AWAKE ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_pcie_dev_wakeup_delay (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;

__attribute__((used)) static int mwifiex_pm_wakeup_card(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;

 mwifiex_dbg(adapter, EVENT,
      "event: Wakeup device...\n");

 if (reg->sleep_cookie)
  mwifiex_pcie_dev_wakeup_delay(adapter);


 if (mwifiex_write_reg(adapter, reg->fw_status, FIRMWARE_READY_PCIE)) {
  mwifiex_dbg(adapter, ERROR,
       "Writing fw_status register failed\n");
  return -1;
 }

 if (reg->sleep_cookie) {
  mwifiex_pcie_dev_wakeup_delay(adapter);
  mwifiex_dbg(adapter, INFO,
       "PCIE wakeup: Setting PS_STATE_AWAKE\n");
  adapter->ps_state = PS_STATE_AWAKE;
 }

 return 0;
}
