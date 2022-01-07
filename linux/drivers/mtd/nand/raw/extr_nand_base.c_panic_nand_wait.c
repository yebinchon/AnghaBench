
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
typedef int status ;


 int NAND_STATUS_READY ;
 int mdelay (int) ;
 int nand_read_data_op (struct nand_chip*,int*,int,int) ;
 scalar_t__ stub1 (struct nand_chip*) ;

void panic_nand_wait(struct nand_chip *chip, unsigned long timeo)
{
 int i;
 for (i = 0; i < timeo; i++) {
  if (chip->legacy.dev_ready) {
   if (chip->legacy.dev_ready(chip))
    break;
  } else {
   int ret;
   u8 status;

   ret = nand_read_data_op(chip, &status, sizeof(status),
      1);
   if (ret)
    return;

   if (status & NAND_STATUS_READY)
    break;
  }
  mdelay(1);
 }
}
