
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cmd_ctrl ) (struct nand_chip*,int ,int) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;


 int BUG () ;
 int NAND_CMD_NONE ;
 int NAND_CTRL_CHANGE ;
 int stub1 (struct nand_chip*,int ,int) ;

__attribute__((used)) static void nand_select_chip(struct nand_chip *chip, int chipnr)
{
 switch (chipnr) {
 case -1:
  chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE,
          0 | NAND_CTRL_CHANGE);
  break;
 case 0:
  break;

 default:
  BUG();
 }
}
