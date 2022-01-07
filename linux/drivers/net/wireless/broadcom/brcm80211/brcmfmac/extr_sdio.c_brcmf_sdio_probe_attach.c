
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct brcmf_sdio_dev {int func1; TYPE_5__* settings; TYPE_1__* bus_if; int dev; void* cc_core; } ;
struct brcmf_sdio {scalar_t__ head_align; scalar_t__ sgentry_align; int* rxhdr; int intr; int poll; int pollrate; int * hdrbuf; int txq; TYPE_4__* ci; void* sdio_core; struct brcmf_sdio_dev* sdiodev; } ;
struct TYPE_16__ {int base; } ;
struct TYPE_12__ {scalar_t__ sd_head_align; scalar_t__ sd_sgentry_align; int drive_strength; scalar_t__ oob_irq_supported; } ;
struct TYPE_13__ {TYPE_2__ sdio; } ;
struct TYPE_15__ {TYPE_3__ bus; } ;
struct TYPE_14__ {int chiprev; int chip; } ;
struct TYPE_11__ {int wowl_supported; } ;


 scalar_t__ ALIGNMENT ;
 int BCMA_CC_PMU_CTL_RES_RELOAD ;
 int BCMA_CC_PMU_CTL_RES_SHIFT ;
 int BCMA_CORE_CHIPCOMMON ;
 int BCMA_CORE_SDIO_DEV ;
 int BRCMF_BUSTYPE_SDIO ;
 int BRCMF_INIT_CLKCTL1 ;
 int CORE_CC_REG (int ,int ) ;
 int DEFAULT_SDIO_DRIVE_STRENGTH ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 scalar_t__ MAX_HDR_READ ;
 int MMC_PM_KEEP_POWER ;
 int MMC_PM_WAKE_SDIO_IRQ ;
 scalar_t__ PRIOMASK ;
 int SBSDIO_AVBITS ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SDIO_CCCR_BRCM_CARDCTRL ;
 int SDIO_CCCR_BRCM_CARDCTRL_WLANRESET ;
 int SI_ENUM_BASE ;
 int TXQLEN ;
 TYPE_4__* brcmf_chip_attach (struct brcmf_sdio_dev*,int *) ;
 void* brcmf_chip_get_core (TYPE_4__*,int ) ;
 TYPE_6__* brcmf_chip_get_pmu (TYPE_4__*) ;
 int brcmf_err (char*,...) ;
 TYPE_5__* brcmf_get_module_param (int ,int ,int ,int ) ;
 int brcmf_sdio_buscore_ops ;
 int brcmf_sdio_drivestrengthinit (struct brcmf_sdio_dev*,TYPE_4__*,int) ;
 scalar_t__ brcmf_sdio_kso_init (struct brcmf_sdio*) ;
 int brcmf_sdiod_func0_rb (struct brcmf_sdio_dev*,int ,int*) ;
 int brcmf_sdiod_func0_wb (struct brcmf_sdio_dev*,int ,int,int*) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int*) ;
 int brcmf_sdiod_readl (struct brcmf_sdio_dev*,int,int*) ;
 int brcmf_sdiod_sgtable_alloc (struct brcmf_sdio_dev*) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int,int*) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,int,int,int*) ;
 int brcmu_pktq_init (int *,scalar_t__,int ) ;
 int * kzalloc (scalar_t__,int ) ;
 int pmucontrol ;
 int pr_debug (char*,int) ;
 scalar_t__ roundup (unsigned long,scalar_t__) ;
 int sdio_claim_host (int ) ;
 int sdio_get_host_pm_caps (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static bool
brcmf_sdio_probe_attach(struct brcmf_sdio *bus)
{
 struct brcmf_sdio_dev *sdiodev;
 u8 clkctl = 0;
 int err = 0;
 int reg_addr;
 u32 reg_val;
 u32 drivestrength;

 sdiodev = bus->sdiodev;
 sdio_claim_host(sdiodev->func1);

 pr_debug("F1 signature read @0x18000000=0x%4x\n",
   brcmf_sdiod_readl(sdiodev, SI_ENUM_BASE, ((void*)0)));






 brcmf_sdiod_writeb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, BRCMF_INIT_CLKCTL1,
      &err);
 if (!err)
  clkctl = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
        &err);

 if (err || ((clkctl & ~SBSDIO_AVBITS) != BRCMF_INIT_CLKCTL1)) {
  brcmf_err("ChipClkCSR access: err %d wrote 0x%02x read 0x%02x\n",
     err, BRCMF_INIT_CLKCTL1, clkctl);
  goto fail;
 }

 bus->ci = brcmf_chip_attach(sdiodev, &brcmf_sdio_buscore_ops);
 if (IS_ERR(bus->ci)) {
  brcmf_err("brcmf_chip_attach failed!\n");
  bus->ci = ((void*)0);
  goto fail;
 }


 bus->sdio_core = brcmf_chip_get_core(bus->ci, BCMA_CORE_SDIO_DEV);
 if (!bus->sdio_core)
  goto fail;


 sdiodev->cc_core = brcmf_chip_get_core(bus->ci, BCMA_CORE_CHIPCOMMON);
 if (!sdiodev->cc_core)
  goto fail;

 sdiodev->settings = brcmf_get_module_param(sdiodev->dev,
         BRCMF_BUSTYPE_SDIO,
         bus->ci->chip,
         bus->ci->chiprev);
 if (!sdiodev->settings) {
  brcmf_err("Failed to get device parameters\n");
  goto fail;
 }



 bus->head_align = ALIGNMENT;
 bus->sgentry_align = ALIGNMENT;
 if (sdiodev->settings->bus.sdio.sd_head_align > ALIGNMENT)
  bus->head_align = sdiodev->settings->bus.sdio.sd_head_align;
 if (sdiodev->settings->bus.sdio.sd_sgentry_align > ALIGNMENT)
  bus->sgentry_align =
    sdiodev->settings->bus.sdio.sd_sgentry_align;




 brcmf_sdiod_sgtable_alloc(sdiodev);
 if (brcmf_sdio_kso_init(bus)) {
  brcmf_err("error enabling KSO\n");
  goto fail;
 }

 if (sdiodev->settings->bus.sdio.drive_strength)
  drivestrength = sdiodev->settings->bus.sdio.drive_strength;
 else
  drivestrength = DEFAULT_SDIO_DRIVE_STRENGTH;
 brcmf_sdio_drivestrengthinit(sdiodev, bus->ci, drivestrength);


 reg_val = brcmf_sdiod_func0_rb(sdiodev, SDIO_CCCR_BRCM_CARDCTRL, &err);
 if (err)
  goto fail;

 reg_val |= SDIO_CCCR_BRCM_CARDCTRL_WLANRESET;

 brcmf_sdiod_func0_wb(sdiodev, SDIO_CCCR_BRCM_CARDCTRL, reg_val, &err);
 if (err)
  goto fail;


 reg_addr = CORE_CC_REG(brcmf_chip_get_pmu(bus->ci)->base, pmucontrol);
 reg_val = brcmf_sdiod_readl(sdiodev, reg_addr, &err);
 if (err)
  goto fail;

 reg_val |= (BCMA_CC_PMU_CTL_RES_RELOAD << BCMA_CC_PMU_CTL_RES_SHIFT);

 brcmf_sdiod_writel(sdiodev, reg_addr, reg_val, &err);
 if (err)
  goto fail;

 sdio_release_host(sdiodev->func1);

 brcmu_pktq_init(&bus->txq, (PRIOMASK + 1), TXQLEN);


 bus->hdrbuf = kzalloc(MAX_HDR_READ + bus->head_align, GFP_KERNEL);
 if (!bus->hdrbuf)
  return 0;

 bus->rxhdr = (u8 *) roundup((unsigned long)&bus->hdrbuf[0],
        bus->head_align);


 bus->intr = 1;
 bus->poll = 0;
 if (bus->poll)
  bus->pollrate = 1;

 return 1;

fail:
 sdio_release_host(sdiodev->func1);
 return 0;
}
