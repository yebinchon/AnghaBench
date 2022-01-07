
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int ALE_PIN_CTL ;
 int CLE_PIN_CTL ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int eieio () ;
 int inl (int ) ;
 int lpcctl ;
 int out_8 (scalar_t__,int) ;

__attribute__((used)) static void pasemi_hwcontrol(struct nand_chip *chip, int cmd,
        unsigned int ctrl)
{
 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  out_8(chip->legacy.IO_ADDR_W + (1 << CLE_PIN_CTL), cmd);
 else
  out_8(chip->legacy.IO_ADDR_W + (1 << ALE_PIN_CTL), cmd);


 eieio();
 inl(lpcctl);
}
