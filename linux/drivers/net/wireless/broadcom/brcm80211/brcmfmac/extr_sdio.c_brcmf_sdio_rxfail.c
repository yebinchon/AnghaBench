
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct brcmf_sdio_dev {int func2; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ f1regdata; int rxrtx; } ;
struct brcmf_sdio {int rxskip; TYPE_2__ cur_read; TYPE_1__ sdcnt; struct brcmf_sdio_dev* sdiodev; struct brcmf_core* sdio_core; } ;
struct brcmf_core {scalar_t__ base; } ;


 int SBSDIO_FUNC1_FRAMECTRL ;
 int SBSDIO_FUNC1_RFRAMEBCHI ;
 int SBSDIO_FUNC1_RFRAMEBCLO ;
 int SDIO ;
 scalar_t__ SD_REG (int ) ;
 int SFC_RF_TERM ;
 int SMB_NAK ;
 int brcmf_dbg (int ,char*,int) ;
 int brcmf_err (char*,...) ;
 int brcmf_sdiod_abort (struct brcmf_sdio_dev*,int ) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int*) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int ,int*) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,scalar_t__,int ,int*) ;
 int tosbmailbox ;

__attribute__((used)) static void brcmf_sdio_rxfail(struct brcmf_sdio *bus, bool abort, bool rtx)
{
 struct brcmf_sdio_dev *sdiod = bus->sdiodev;
 struct brcmf_core *core = bus->sdio_core;
 uint retries = 0;
 u16 lastrbc;
 u8 hi, lo;
 int err;

 brcmf_err("%sterminate frame%s\n",
    abort ? "abort command, " : "",
    rtx ? ", send NAK" : "");

 if (abort)
  brcmf_sdiod_abort(bus->sdiodev, bus->sdiodev->func2);

 brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_FRAMECTRL, SFC_RF_TERM,
      &err);
 bus->sdcnt.f1regdata++;


 for (lastrbc = retries = 0xffff; retries > 0; retries--) {
  hi = brcmf_sdiod_readb(bus->sdiodev, SBSDIO_FUNC1_RFRAMEBCHI,
           &err);
  lo = brcmf_sdiod_readb(bus->sdiodev, SBSDIO_FUNC1_RFRAMEBCLO,
           &err);
  bus->sdcnt.f1regdata += 2;

  if ((hi == 0) && (lo == 0))
   break;

  if ((hi > (lastrbc >> 8)) && (lo > (lastrbc & 0x00ff))) {
   brcmf_err("count growing: last 0x%04x now 0x%04x\n",
      lastrbc, (hi << 8) + lo);
  }
  lastrbc = (hi << 8) + lo;
 }

 if (!retries)
  brcmf_err("count never zeroed: last 0x%04x\n", lastrbc);
 else
  brcmf_dbg(SDIO, "flush took %d iterations\n", 0xffff - retries);

 if (rtx) {
  bus->sdcnt.rxrtx++;
  brcmf_sdiod_writel(sdiod, core->base + SD_REG(tosbmailbox),
       SMB_NAK, &err);

  bus->sdcnt.f1regdata++;
  if (err == 0)
   bus->rxskip = 1;
 }


 bus->cur_read.len = 0;
}
