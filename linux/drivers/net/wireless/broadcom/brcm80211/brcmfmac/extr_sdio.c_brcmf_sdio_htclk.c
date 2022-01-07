
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_sdio {scalar_t__ clkstate; int sdiodev; int alp_only; scalar_t__ sr_enabled; } ;


 void* CLK_AVAIL ;
 scalar_t__ CLK_PENDING ;
 void* CLK_SDONLY ;
 int EBADE ;
 int PMU_MAX_TRANSITION_DLY ;
 scalar_t__ SBSDIO_ALPONLY (int ) ;
 int SBSDIO_ALP_AVAIL_REQ ;
 int SBSDIO_CLKAV (int ,int ) ;
 int SBSDIO_DEVCTL_CA_INT_ONLY ;
 int SBSDIO_DEVICE_CTL ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SBSDIO_HT_AVAIL_REQ ;
 int SDIO ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,...) ;
 int brcmf_sdiod_readb (int ,int ,int*) ;
 int brcmf_sdiod_writeb (int ,int ,int ,int*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int brcmf_sdio_htclk(struct brcmf_sdio *bus, bool on, bool pendok)
{
 int err;
 u8 clkctl, clkreq, devctl;
 unsigned long timeout;

 brcmf_dbg(SDIO, "Enter\n");

 clkctl = 0;

 if (bus->sr_enabled) {
  bus->clkstate = (on ? CLK_AVAIL : CLK_SDONLY);
  return 0;
 }

 if (on) {

  clkreq =
      bus->alp_only ? SBSDIO_ALP_AVAIL_REQ : SBSDIO_HT_AVAIL_REQ;

  brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
       clkreq, &err);
  if (err) {
   brcmf_err("HT Avail request error: %d\n", err);
   return -EBADE;
  }


  clkctl = brcmf_sdiod_readb(bus->sdiodev,
        SBSDIO_FUNC1_CHIPCLKCSR, &err);
  if (err) {
   brcmf_err("HT Avail read error: %d\n", err);
   return -EBADE;
  }


  if (!SBSDIO_CLKAV(clkctl, bus->alp_only) && pendok) {

   devctl = brcmf_sdiod_readb(bus->sdiodev,
         SBSDIO_DEVICE_CTL, &err);
   if (err) {
    brcmf_err("Devctl error setting CA: %d\n", err);
    return -EBADE;
   }

   devctl |= SBSDIO_DEVCTL_CA_INT_ONLY;
   brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_DEVICE_CTL,
        devctl, &err);
   brcmf_dbg(SDIO, "CLKCTL: set PENDING\n");
   bus->clkstate = CLK_PENDING;

   return 0;
  } else if (bus->clkstate == CLK_PENDING) {

   devctl = brcmf_sdiod_readb(bus->sdiodev,
         SBSDIO_DEVICE_CTL, &err);
   devctl &= ~SBSDIO_DEVCTL_CA_INT_ONLY;
   brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_DEVICE_CTL,
        devctl, &err);
  }


  timeout = jiffies +
     msecs_to_jiffies(PMU_MAX_TRANSITION_DLY/1000);
  while (!SBSDIO_CLKAV(clkctl, bus->alp_only)) {
   clkctl = brcmf_sdiod_readb(bus->sdiodev,
         SBSDIO_FUNC1_CHIPCLKCSR,
         &err);
   if (time_after(jiffies, timeout))
    break;
   else
    usleep_range(5000, 10000);
  }
  if (err) {
   brcmf_err("HT Avail request error: %d\n", err);
   return -EBADE;
  }
  if (!SBSDIO_CLKAV(clkctl, bus->alp_only)) {
   brcmf_err("HT Avail timeout (%d): clkctl 0x%02x\n",
      PMU_MAX_TRANSITION_DLY, clkctl);
   return -EBADE;
  }


  bus->clkstate = CLK_AVAIL;
  brcmf_dbg(SDIO, "CLKCTL: turned ON\n");
 } else {
  clkreq = 0;

  if (bus->clkstate == CLK_PENDING) {

   devctl = brcmf_sdiod_readb(bus->sdiodev,
         SBSDIO_DEVICE_CTL, &err);
   devctl &= ~SBSDIO_DEVCTL_CA_INT_ONLY;
   brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_DEVICE_CTL,
        devctl, &err);
  }

  bus->clkstate = CLK_SDONLY;
  brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
       clkreq, &err);
  brcmf_dbg(SDIO, "CLKCTL: turned OFF\n");
  if (err) {
   brcmf_err("Failed access turning clock off: %d\n",
      err);
   return -EBADE;
  }
 }
 return 0;
}
