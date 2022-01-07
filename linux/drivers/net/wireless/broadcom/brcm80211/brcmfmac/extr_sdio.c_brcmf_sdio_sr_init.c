
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_sdio {int sr_enabled; int sdiodev; int ci; } ;


 int INFO ;
 int SBSDIO_FORCE_HT ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SBSDIO_FUNC1_WAKEUPCTRL ;
 int SBSDIO_FUNC1_WCTRL_ALPWAIT_SHIFT ;
 int SBSDIO_FUNC1_WCTRL_HTWAIT_SHIFT ;
 int SBSDIO_HT_AVAIL_REQ ;
 int SDIO_CCCR_BRCM_CARDCAP ;
 int SDIO_CCCR_BRCM_CARDCAP_CMD14_EXT ;
 int SDIO_CCCR_BRCM_CARDCAP_CMD14_SUPPORT ;
 int SDIO_CCCR_BRCM_CARDCAP_CMD_NODEC ;
 int TRACE ;
 scalar_t__ brcmf_chip_is_ulp (int ) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*) ;
 scalar_t__ brcmf_sdio_aos_no_decode (struct brcmf_sdio*) ;
 int brcmf_sdiod_func0_wb (int ,int ,int,int*) ;
 int brcmf_sdiod_readb (int ,int ,int*) ;
 int brcmf_sdiod_writeb (int ,int ,int,int*) ;

__attribute__((used)) static void brcmf_sdio_sr_init(struct brcmf_sdio *bus)
{
 int err = 0;
 u8 val;
 u8 wakeupctrl;
 u8 cardcap;
 u8 chipclkcsr;

 brcmf_dbg(TRACE, "Enter\n");

 if (brcmf_chip_is_ulp(bus->ci)) {
  wakeupctrl = SBSDIO_FUNC1_WCTRL_ALPWAIT_SHIFT;
  chipclkcsr = SBSDIO_HT_AVAIL_REQ;
 } else {
  wakeupctrl = SBSDIO_FUNC1_WCTRL_HTWAIT_SHIFT;
  chipclkcsr = SBSDIO_FORCE_HT;
 }

 if (brcmf_sdio_aos_no_decode(bus)) {
  cardcap = SDIO_CCCR_BRCM_CARDCAP_CMD_NODEC;
 } else {
  cardcap = (SDIO_CCCR_BRCM_CARDCAP_CMD14_SUPPORT |
      SDIO_CCCR_BRCM_CARDCAP_CMD14_EXT);
 }

 val = brcmf_sdiod_readb(bus->sdiodev, SBSDIO_FUNC1_WAKEUPCTRL, &err);
 if (err) {
  brcmf_err("error reading SBSDIO_FUNC1_WAKEUPCTRL\n");
  return;
 }
 val |= 1 << wakeupctrl;
 brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_WAKEUPCTRL, val, &err);
 if (err) {
  brcmf_err("error writing SBSDIO_FUNC1_WAKEUPCTRL\n");
  return;
 }


 brcmf_sdiod_func0_wb(bus->sdiodev, SDIO_CCCR_BRCM_CARDCAP,
        cardcap,
        &err);
 if (err) {
  brcmf_err("error writing SDIO_CCCR_BRCM_CARDCAP\n");
  return;
 }

 brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
      chipclkcsr, &err);
 if (err) {
  brcmf_err("error writing SBSDIO_FUNC1_CHIPCLKCSR\n");
  return;
 }


 bus->sr_enabled = 1;
 brcmf_dbg(INFO, "SR enabled\n");
}
