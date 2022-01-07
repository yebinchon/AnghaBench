
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcmf_sdio_dev {int func2; } ;
struct TYPE_2__ {scalar_t__ f1regdata; int tx_sderrs; } ;
struct brcmf_sdio {TYPE_1__ sdcnt; struct brcmf_sdio_dev* sdiodev; } ;


 int SBSDIO_FUNC1_FRAMECTRL ;
 int SBSDIO_FUNC1_WFRAMEBCHI ;
 int SBSDIO_FUNC1_WFRAMEBCLO ;
 int SFC_WF_TERM ;
 int brcmf_err (char*) ;
 int brcmf_sdiod_abort (struct brcmf_sdio_dev*,int ) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int *) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int ,int *) ;

__attribute__((used)) static void brcmf_sdio_txfail(struct brcmf_sdio *bus)
{
 struct brcmf_sdio_dev *sdiodev = bus->sdiodev;
 u8 i, hi, lo;


 brcmf_err("sdio error, abort command and terminate frame\n");
 bus->sdcnt.tx_sderrs++;

 brcmf_sdiod_abort(sdiodev, sdiodev->func2);
 brcmf_sdiod_writeb(sdiodev, SBSDIO_FUNC1_FRAMECTRL, SFC_WF_TERM, ((void*)0));
 bus->sdcnt.f1regdata++;

 for (i = 0; i < 3; i++) {
  hi = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_WFRAMEBCHI, ((void*)0));
  lo = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_WFRAMEBCLO, ((void*)0));
  bus->sdcnt.f1regdata += 2;
  if ((hi == 0) && (lo == 0))
   break;
 }
}
