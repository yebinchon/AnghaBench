
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int options; } ;
struct sh_flctl {int flcmncr_base; int erase_ADRCNT; int rw_ADRCNT; TYPE_1__ chip; scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;


 int ADRCNT_1 ;
 int CDSRC_E ;
 int DOADR_E ;
 int DOCMD1_E ;
 int DOCMD2_E ;
 int DOSR_E ;
 int FLCMCDR (struct sh_flctl*) ;
 int FLCMDCR (struct sh_flctl*) ;
 int FLCMNCR (struct sh_flctl*) ;
 int NAND_BUSWIDTH_16 ;
 int SELRW ;
 int SEL_16BIT ;
 int SNAND_E ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int writel (int,int ) ;

__attribute__((used)) static void set_cmd_regs(struct mtd_info *mtd, uint32_t cmd, uint32_t flcmcdr_val)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 uint32_t flcmncr_val = flctl->flcmncr_base & ~SEL_16BIT;
 uint32_t flcmdcr_val, addr_len_bytes = 0;


 if (flctl->page_size)
  flcmncr_val |= SNAND_E;
 else
  flcmncr_val &= ~SNAND_E;


 flcmdcr_val = DOCMD1_E | DOADR_E;


 switch (cmd) {
 case 136:
  addr_len_bytes = flctl->erase_ADRCNT;
  flcmdcr_val |= DOCMD2_E;
  break;
 case 134:
 case 132:
 case 130:
  addr_len_bytes = flctl->rw_ADRCNT;
  flcmdcr_val |= CDSRC_E;
  if (flctl->chip.options & NAND_BUSWIDTH_16)
   flcmncr_val |= SEL_16BIT;
  break;
 case 129:

  flcmdcr_val &= ~DOADR_E;
  break;
 case 135:
  addr_len_bytes = flctl->rw_ADRCNT;
  flcmdcr_val |= DOCMD2_E | CDSRC_E | SELRW;
  if (flctl->chip.options & NAND_BUSWIDTH_16)
   flcmncr_val |= SEL_16BIT;
  break;
 case 133:
  flcmncr_val &= ~SNAND_E;
  flcmdcr_val |= CDSRC_E;
  addr_len_bytes = ADRCNT_1;
  break;
 case 128:
 case 131:
  flcmncr_val &= ~SNAND_E;
  flcmdcr_val &= ~(DOADR_E | DOSR_E);
  break;
 default:
  break;
 }


 flcmdcr_val |= addr_len_bytes;


 writel(flcmncr_val, FLCMNCR(flctl));
 writel(flcmdcr_val, FLCMDCR(flctl));
 writel(flcmcdr_val, FLCMCDR(flctl));
}
