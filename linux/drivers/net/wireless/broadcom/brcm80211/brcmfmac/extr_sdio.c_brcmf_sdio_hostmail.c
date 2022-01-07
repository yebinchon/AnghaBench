
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct brcmf_sdio_dev {TYPE_1__* func1; } ;
struct TYPE_4__ {int f1regdata; int fc_rcvd; int fc_xon; int fc_xoff; } ;
struct brcmf_sdio {int rx_seq; int rxskip; int sdpcm_ver; int flowcontrol; TYPE_2__ sdcnt; struct brcmf_core* sdio_core; struct brcmf_sdio_dev* sdiodev; } ;
struct brcmf_core {scalar_t__ base; } ;
struct TYPE_3__ {int dev; } ;


 int HMB_DATA_DEVREADY ;
 int HMB_DATA_FC ;
 int HMB_DATA_FCDATA_MASK ;
 int HMB_DATA_FCDATA_SHIFT ;
 int HMB_DATA_FWHALT ;
 int HMB_DATA_FWREADY ;
 int HMB_DATA_NAKHANDLED ;
 int HMB_DATA_VERSION_MASK ;
 int HMB_DATA_VERSION_SHIFT ;
 int I_HMB_FRAME_IND ;
 int SDIO ;
 int SDPCM_PROT_VERSION ;
 scalar_t__ SD_REG (int ) ;
 int SMB_INT_ACK ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*,...) ;
 int brcmf_fw_crashed (int *) ;
 int brcmf_sdio_get_console_addr (struct brcmf_sdio*) ;
 int brcmf_sdiod_readl (struct brcmf_sdio_dev*,scalar_t__,int*) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,scalar_t__,int ,int*) ;
 int tohostmailboxdata ;
 int tosbmailbox ;

__attribute__((used)) static u32 brcmf_sdio_hostmail(struct brcmf_sdio *bus)
{
 struct brcmf_sdio_dev *sdiod = bus->sdiodev;
 struct brcmf_core *core = bus->sdio_core;
 u32 intstatus = 0;
 u32 hmb_data;
 u8 fcbits;
 int ret;

 brcmf_dbg(SDIO, "Enter\n");


 hmb_data = brcmf_sdiod_readl(sdiod,
         core->base + SD_REG(tohostmailboxdata),
         &ret);

 if (!ret)
  brcmf_sdiod_writel(sdiod, core->base + SD_REG(tosbmailbox),
       SMB_INT_ACK, &ret);

 bus->sdcnt.f1regdata += 2;


 if (hmb_data & HMB_DATA_FWHALT) {
  brcmf_dbg(SDIO, "mailbox indicates firmware halted\n");
  brcmf_fw_crashed(&sdiod->func1->dev);
 }


 if (hmb_data & HMB_DATA_NAKHANDLED) {
  brcmf_dbg(SDIO, "Dongle reports NAK handled, expect rtx of %d\n",
     bus->rx_seq);
  if (!bus->rxskip)
   brcmf_err("unexpected NAKHANDLED!\n");

  bus->rxskip = 0;
  intstatus |= I_HMB_FRAME_IND;
 }




 if (hmb_data & (HMB_DATA_DEVREADY | HMB_DATA_FWREADY)) {
  bus->sdpcm_ver =
      (hmb_data & HMB_DATA_VERSION_MASK) >>
      HMB_DATA_VERSION_SHIFT;
  if (bus->sdpcm_ver != SDPCM_PROT_VERSION)
   brcmf_err("Version mismatch, dongle reports %d, "
      "expecting %d\n",
      bus->sdpcm_ver, SDPCM_PROT_VERSION);
  else
   brcmf_dbg(SDIO, "Dongle ready, protocol version %d\n",
      bus->sdpcm_ver);





  brcmf_sdio_get_console_addr(bus);
 }






 if (hmb_data & HMB_DATA_FC) {
  fcbits = (hmb_data & HMB_DATA_FCDATA_MASK) >>
       HMB_DATA_FCDATA_SHIFT;

  if (fcbits & ~bus->flowcontrol)
   bus->sdcnt.fc_xoff++;

  if (bus->flowcontrol & ~fcbits)
   bus->sdcnt.fc_xon++;

  bus->sdcnt.fc_rcvd++;
  bus->flowcontrol = fcbits;
 }


 if (hmb_data & ~(HMB_DATA_DEVREADY |
    HMB_DATA_NAKHANDLED |
    HMB_DATA_FC |
    HMB_DATA_FWREADY |
    HMB_DATA_FWHALT |
    HMB_DATA_FCDATA_MASK | HMB_DATA_VERSION_MASK))
  brcmf_err("Unknown mailbox data content: 0x%02x\n",
     hmb_data);

 return intstatus;
}
