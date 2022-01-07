
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_sdio {int clkstate; } ;


 int CLK_NONE ;
 int CLK_SDONLY ;
 int SDIO ;
 int brcmf_dbg (int ,char*) ;

__attribute__((used)) static int brcmf_sdio_sdclk(struct brcmf_sdio *bus, bool on)
{
 brcmf_dbg(SDIO, "Enter\n");

 if (on)
  bus->clkstate = CLK_SDONLY;
 else
  bus->clkstate = CLK_NONE;

 return 0;
}
