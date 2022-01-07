
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {TYPE_7__* func2; TYPE_6__* func1; int dev; int settings; TYPE_5__* bus_if; struct brcmf_sdio* bus; } ;
struct TYPE_16__ {scalar_t__ tickcnt; } ;
struct brcmf_sdio {int alp_only; scalar_t__ clkstate; int hostintmask; TYPE_10__* ci; int sdiodev; TYPE_4__ sdcnt; struct brcmf_core* sdio_core; } ;
struct brcmf_fw_request {TYPE_3__* items; } ;
struct brcmf_core {scalar_t__ base; } ;
struct TYPE_13__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
struct TYPE_19__ {struct device dev; } ;
struct TYPE_18__ {int device; } ;
struct TYPE_17__ {int chiprev; int chip; int * ops; int dev; } ;
struct TYPE_14__ {int len; void* data; } ;
struct TYPE_15__ {TYPE_2__ nv_data; struct firmware* binary; } ;
struct TYPE_12__ {int chiprev; int chip; } ;


 int BRCMF_SDIOD_DATA ;
 size_t BRCMF_SDIO_FW_CODE ;
 size_t BRCMF_SDIO_FW_NVRAM ;
 scalar_t__ CLK_AVAIL ;
 scalar_t__ CLK_NONE ;
 int CY_43012_F2_WATERMARK ;
 int CY_4373_F2_WATERMARK ;
 int DEFAULT_F2_WATERMARK ;
 int HOSTINTMASK ;
 int INFO ;
 int SBSDIO_DEVCTL_F2WM_ENAB ;
 int SBSDIO_DEVICE_CTL ;
 int SBSDIO_FORCE_HT ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SBSDIO_FUNC1_MESBUSYCTRL ;
 int SBSDIO_HT_AVAIL_REQ ;
 int SBSDIO_MESBUSYCTRL_ENAB ;
 int SBSDIO_WATERMARK ;


 int SDPCM_PROT_VERSION ;
 scalar_t__ SD_REG (int ) ;
 int SMB_DATA_VERSION_SHIFT ;
 int TRACE ;
 int brcmf_alloc (int ,int ) ;
 int brcmf_attach (int ) ;
 scalar_t__ brcmf_chip_is_ulp (TYPE_10__*) ;
 scalar_t__ brcmf_chip_sr_capable (TYPE_10__*) ;
 int brcmf_dbg (int ,char*,int,...) ;
 int brcmf_err (char*,...) ;
 int brcmf_free (int ) ;
 int brcmf_sdio_bus_ops ;
 int brcmf_sdio_checkdied (struct brcmf_sdio*) ;
 int brcmf_sdio_clkctl (struct brcmf_sdio*,scalar_t__,int) ;
 int brcmf_sdio_download_firmware (struct brcmf_sdio*,struct firmware const*,void*,int ) ;
 int brcmf_sdio_sr_init (struct brcmf_sdio*) ;
 int brcmf_sdio_wd_timer (struct brcmf_sdio*,int) ;
 int brcmf_sdiod_change_state (int ,int ) ;
 int brcmf_sdiod_intr_register (struct brcmf_sdio_dev*) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int*) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int,int*) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,scalar_t__,int,int *) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 int device_release_driver (struct device*) ;
 int hostintmask ;
 int kfree (struct brcmf_fw_request*) ;
 int sdio_claim_host (TYPE_6__*) ;
 int sdio_disable_func (TYPE_7__*) ;
 int sdio_enable_func (TYPE_7__*) ;
 int sdio_release_host (TYPE_6__*) ;
 int tosbmailboxdata ;

__attribute__((used)) static void brcmf_sdio_firmware_callback(struct device *dev, int err,
      struct brcmf_fw_request *fwreq)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiod = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiod->bus;
 struct brcmf_core *core = bus->sdio_core;
 const struct firmware *code;
 void *nvram;
 u32 nvram_len;
 u8 saveclk, bpreq;
 u8 devctl;

 brcmf_dbg(TRACE, "Enter: dev=%s, err=%d\n", dev_name(dev), err);

 if (err)
  goto fail;

 code = fwreq->items[BRCMF_SDIO_FW_CODE].binary;
 nvram = fwreq->items[BRCMF_SDIO_FW_NVRAM].nv_data.data;
 nvram_len = fwreq->items[BRCMF_SDIO_FW_NVRAM].nv_data.len;
 kfree(fwreq);


 bus->alp_only = 1;
 err = brcmf_sdio_download_firmware(bus, code, nvram, nvram_len);
 if (err)
  goto fail;
 bus->alp_only = 0;


 bus->sdcnt.tickcnt = 0;
 brcmf_sdio_wd_timer(bus, 1);

 sdio_claim_host(sdiod->func1);


 brcmf_sdio_clkctl(bus, CLK_AVAIL, 0);
 if (bus->clkstate != CLK_AVAIL)
  goto release;


 saveclk = brcmf_sdiod_readb(sdiod, SBSDIO_FUNC1_CHIPCLKCSR, &err);
 if (!err) {
  bpreq = saveclk;
  bpreq |= brcmf_chip_is_ulp(bus->ci) ?
   SBSDIO_HT_AVAIL_REQ : SBSDIO_FORCE_HT;
  brcmf_sdiod_writeb(sdiod, SBSDIO_FUNC1_CHIPCLKCSR,
       bpreq, &err);
 }
 if (err) {
  brcmf_err("Failed to force clock for F2: err %d\n", err);
  goto release;
 }


 brcmf_sdiod_writel(sdiod, core->base + SD_REG(tosbmailboxdata),
      SDPCM_PROT_VERSION << SMB_DATA_VERSION_SHIFT, ((void*)0));

 err = sdio_enable_func(sdiod->func2);

 brcmf_dbg(INFO, "enable F2: err=%d\n", err);


 if (!err) {

  bus->hostintmask = HOSTINTMASK;
  brcmf_sdiod_writel(sdiod, core->base + SD_REG(hostintmask),
       bus->hostintmask, ((void*)0));

  switch (sdiod->func1->device) {
  case 128:
   brcmf_dbg(INFO, "set F2 watermark to 0x%x*4 bytes\n",
      CY_4373_F2_WATERMARK);
   brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
        CY_4373_F2_WATERMARK, &err);
   devctl = brcmf_sdiod_readb(sdiod, SBSDIO_DEVICE_CTL,
         &err);
   devctl |= SBSDIO_DEVCTL_F2WM_ENAB;
   brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
        &err);
   brcmf_sdiod_writeb(sdiod, SBSDIO_FUNC1_MESBUSYCTRL,
        CY_4373_F2_WATERMARK |
        SBSDIO_MESBUSYCTRL_ENAB, &err);
   break;
  case 129:
   brcmf_dbg(INFO, "set F2 watermark to 0x%x*4 bytes\n",
      CY_43012_F2_WATERMARK);
   brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
        CY_43012_F2_WATERMARK, &err);
   devctl = brcmf_sdiod_readb(sdiod, SBSDIO_DEVICE_CTL,
         &err);
   devctl |= SBSDIO_DEVCTL_F2WM_ENAB;
   brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
        &err);
   break;
  default:
   brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
        DEFAULT_F2_WATERMARK, &err);
   break;
  }
 } else {

  sdio_disable_func(sdiod->func2);
  goto checkdied;
 }

 if (brcmf_chip_sr_capable(bus->ci)) {
  brcmf_sdio_sr_init(bus);
 } else {

  brcmf_sdiod_writeb(sdiod, SBSDIO_FUNC1_CHIPCLKCSR,
       saveclk, &err);
 }

 if (err == 0) {

  brcmf_sdiod_change_state(bus->sdiodev, BRCMF_SDIOD_DATA);

  err = brcmf_sdiod_intr_register(sdiod);
  if (err != 0)
   brcmf_err("intr register failed:%d\n", err);
 }


 if (err != 0) {
  brcmf_sdio_clkctl(bus, CLK_NONE, 0);
  goto checkdied;
 }

 sdio_release_host(sdiod->func1);


 sdiod->bus_if->dev = sdiod->dev;
 sdiod->bus_if->ops = &brcmf_sdio_bus_ops;
 sdiod->bus_if->chip = bus->ci->chip;
 sdiod->bus_if->chiprev = bus->ci->chiprev;

 err = brcmf_alloc(sdiod->dev, sdiod->settings);
 if (err) {
  brcmf_err("brcmf_alloc failed\n");
  goto claim;
 }


 err = brcmf_attach(sdiod->dev);
 if (err != 0) {
  brcmf_err("brcmf_attach failed\n");
  goto free;
 }


 return;

free:
 brcmf_free(sdiod->dev);
claim:
 sdio_claim_host(sdiod->func1);
checkdied:
 brcmf_sdio_checkdied(bus);
release:
 sdio_release_host(sdiod->func1);
fail:
 brcmf_dbg(TRACE, "failed: dev=%s, err=%d\n", dev_name(dev), err);
 device_release_driver(&sdiod->func2->dev);
 device_release_driver(dev);
}
