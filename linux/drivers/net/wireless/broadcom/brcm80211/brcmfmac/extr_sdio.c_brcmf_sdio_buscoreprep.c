
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_sdio_dev {int dummy; } ;


 int EACCES ;
 int EBUSY ;
 int PMU_MAX_TRANSITION_DLY ;
 int SBSDIO_ALPAV (int) ;
 int SBSDIO_ALP_AVAIL_REQ ;
 int SBSDIO_AVBITS ;
 int SBSDIO_FORCE_ALP ;
 int SBSDIO_FORCE_HW_CLKREQ_OFF ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SBSDIO_FUNC1_SDIOPULLUP ;
 int SPINWAIT (int,int ) ;
 int brcmf_err (char*,...) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int *) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int,int*) ;
 int udelay (int) ;

__attribute__((used)) static int brcmf_sdio_buscoreprep(void *ctx)
{
 struct brcmf_sdio_dev *sdiodev = ctx;
 int err = 0;
 u8 clkval, clkset;


 clkset = SBSDIO_FORCE_HW_CLKREQ_OFF | SBSDIO_ALP_AVAIL_REQ;
 brcmf_sdiod_writeb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, clkset, &err);
 if (err) {
  brcmf_err("error writing for HT off\n");
  return err;
 }



 clkval = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, ((void*)0));

 if ((clkval & ~SBSDIO_AVBITS) != clkset) {
  brcmf_err("ChipClkCSR access: wrote 0x%02x read 0x%02x\n",
     clkset, clkval);
  return -EACCES;
 }

 SPINWAIT(((clkval = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
           ((void*)0))),
   !SBSDIO_ALPAV(clkval)),
   PMU_MAX_TRANSITION_DLY);

 if (!SBSDIO_ALPAV(clkval)) {
  brcmf_err("timeout on ALPAV wait, clkval 0x%02x\n",
     clkval);
  return -EBUSY;
 }

 clkset = SBSDIO_FORCE_HW_CLKREQ_OFF | SBSDIO_FORCE_ALP;
 brcmf_sdiod_writeb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, clkset, &err);
 udelay(65);


 brcmf_sdiod_writeb(sdiodev, SBSDIO_FUNC1_SDIOPULLUP, 0, ((void*)0));

 return 0;
}
