
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct brcmf_sdio {TYPE_2__* sdiodev; TYPE_1__* ci; } ;
struct TYPE_5__ {int func1; } ;
struct TYPE_4__ {scalar_t__ chip; } ;


 int BRCMF_SDIO_MAX_ACCESS_ERRORS ;
 scalar_t__ CY_CC_43012_CHIP_ID ;
 int KSO_WAIT_US ;
 int MAX_KSO_ATTEMPTS ;
 int SBSDIO_FUNC1_SLEEPCSR ;
 int SBSDIO_FUNC1_SLEEPCSR_DEVON_MASK ;
 int SBSDIO_FUNC1_SLEEPCSR_KSO_MASK ;
 int SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT ;
 int SDIO ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int,...) ;
 int brcmf_err (char*,int,int) ;
 int brcmf_sdiod_readb (TYPE_2__*,int ,int*) ;
 int brcmf_sdiod_writeb (TYPE_2__*,int ,int,int*) ;
 int sdio_retune_crc_disable (int ) ;
 int sdio_retune_crc_enable (int ) ;
 int sdio_retune_hold_now (int ) ;
 int sdio_retune_release (int ) ;
 int udelay (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
{
 u8 wr_val = 0, rd_val, cmp_val, bmask;
 int err = 0;
 int err_cnt = 0;
 int try_cnt = 0;

 brcmf_dbg(TRACE, "Enter: on=%d\n", on);

 sdio_retune_crc_disable(bus->sdiodev->func1);


 if (on)
  sdio_retune_hold_now(bus->sdiodev->func1);

 wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);

 brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);






 if (!on && bus->ci->chip == CY_CC_43012_CHIP_ID)
  return err;

 if (on) {




  cmp_val = SBSDIO_FUNC1_SLEEPCSR_KSO_MASK |
     SBSDIO_FUNC1_SLEEPCSR_DEVON_MASK;
  bmask = cmp_val;
  usleep_range(2000, 3000);
 } else {

  cmp_val = 0;



  bmask = SBSDIO_FUNC1_SLEEPCSR_KSO_MASK;
 }

 do {





  rd_val = brcmf_sdiod_readb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR,
        &err);
  if (!err) {
   if ((rd_val & bmask) == cmp_val)
    break;
   err_cnt = 0;
  }

  if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS))
   break;

  udelay(KSO_WAIT_US);
  brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val,
       &err);

 } while (try_cnt++ < MAX_KSO_ATTEMPTS);

 if (try_cnt > 2)
  brcmf_dbg(SDIO, "try_cnt=%d rd_val=0x%x err=%d\n", try_cnt,
     rd_val, err);

 if (try_cnt > MAX_KSO_ATTEMPTS)
  brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);

 if (on)
  sdio_retune_release(bus->sdiodev->func1);

 sdio_retune_crc_enable(bus->sdiodev->func1);

 return err;
}
