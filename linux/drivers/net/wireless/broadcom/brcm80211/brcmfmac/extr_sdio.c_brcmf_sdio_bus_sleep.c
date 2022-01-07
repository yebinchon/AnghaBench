
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_sdio {int sleeping; scalar_t__ sr_enabled; int sdiodev; } ;


 int CLK_AVAIL ;
 int CLK_NONE ;
 int SBSDIO_ALP_AVAIL_REQ ;
 int SBSDIO_CSR_MASK ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SDIO ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*,int) ;
 int brcmf_sdio_clkctl (struct brcmf_sdio*,int ,int) ;
 int brcmf_sdio_kso_control (struct brcmf_sdio*,int) ;
 int brcmf_sdio_wd_timer (struct brcmf_sdio*,int) ;
 int brcmf_sdiod_readb (int ,int ,int*) ;
 int brcmf_sdiod_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int
brcmf_sdio_bus_sleep(struct brcmf_sdio *bus, bool sleep, bool pendok)
{
 int err = 0;
 u8 clkcsr;

 brcmf_dbg(SDIO, "Enter: request %s currently %s\n",
    (sleep ? "SLEEP" : "WAKE"),
    (bus->sleeping ? "SLEEP" : "WAKE"));


 if (bus->sr_enabled) {

  if (sleep == bus->sleeping)
   goto end;


  if (sleep) {
   clkcsr = brcmf_sdiod_readb(bus->sdiodev,
         SBSDIO_FUNC1_CHIPCLKCSR,
         &err);
   if ((clkcsr & SBSDIO_CSR_MASK) == 0) {
    brcmf_dbg(SDIO, "no clock, set ALP\n");
    brcmf_sdiod_writeb(bus->sdiodev,
         SBSDIO_FUNC1_CHIPCLKCSR,
         SBSDIO_ALP_AVAIL_REQ, &err);
   }
   err = brcmf_sdio_kso_control(bus, 0);
  } else {
   err = brcmf_sdio_kso_control(bus, 1);
  }
  if (err) {
   brcmf_err("error while changing bus sleep state %d\n",
      err);
   goto done;
  }
 }

end:

 if (sleep) {
  if (!bus->sr_enabled)
   brcmf_sdio_clkctl(bus, CLK_NONE, pendok);
 } else {
  brcmf_sdio_clkctl(bus, CLK_AVAIL, pendok);
  brcmf_sdio_wd_timer(bus, 1);
 }
 bus->sleeping = sleep;
 brcmf_dbg(SDIO, "new state %s\n",
    (sleep ? "SLEEP" : "WAKE"));
done:
 brcmf_dbg(SDIO, "Exit: err=%d\n", err);
 return err;

}
