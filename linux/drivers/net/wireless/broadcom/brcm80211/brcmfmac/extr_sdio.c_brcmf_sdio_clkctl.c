
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcmf_sdio {int clkstate; } ;





 int SDIO ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*,int const,int) ;
 int brcmf_sdio_htclk (struct brcmf_sdio*,int,int) ;
 int brcmf_sdio_sdclk (struct brcmf_sdio*,int) ;

__attribute__((used)) static int brcmf_sdio_clkctl(struct brcmf_sdio *bus, uint target, bool pendok)
{




 brcmf_dbg(SDIO, "Enter\n");


 if (bus->clkstate == target)
  return 0;

 switch (target) {
 case 130:

  if (bus->clkstate == 129)
   brcmf_sdio_sdclk(bus, 1);

  brcmf_sdio_htclk(bus, 1, pendok);
  break;

 case 128:

  if (bus->clkstate == 129)
   brcmf_sdio_sdclk(bus, 1);
  else if (bus->clkstate == 130)
   brcmf_sdio_htclk(bus, 0, 0);
  else
   brcmf_err("request for %d -> %d\n",
      bus->clkstate, target);
  break;

 case 129:

  if (bus->clkstate == 130)
   brcmf_sdio_htclk(bus, 0, 0);

  brcmf_sdio_sdclk(bus, 0);
  break;
 }




 return 0;
}
