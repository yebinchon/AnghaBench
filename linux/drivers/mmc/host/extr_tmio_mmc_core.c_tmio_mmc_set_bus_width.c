
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tmio_mmc_host {int dummy; } ;


 int CARD_OPT_WIDTH ;
 int CARD_OPT_WIDTH8 ;
 int CTL_SD_MEM_CARD_OPT ;
 unsigned char MMC_BUS_WIDTH_1 ;
 unsigned char MMC_BUS_WIDTH_8 ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;

__attribute__((used)) static void tmio_mmc_set_bus_width(struct tmio_mmc_host *host,
       unsigned char bus_width)
{
 u16 reg = sd_ctrl_read16(host, CTL_SD_MEM_CARD_OPT)
    & ~(CARD_OPT_WIDTH | CARD_OPT_WIDTH8);


 if (bus_width == MMC_BUS_WIDTH_1)
  reg |= CARD_OPT_WIDTH;
 else if (bus_width == MMC_BUS_WIDTH_8)
  reg |= CARD_OPT_WIDTH8;

 sd_ctrl_write16(host, CTL_SD_MEM_CARD_OPT, reg);
}
