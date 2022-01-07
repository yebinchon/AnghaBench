
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {unsigned int (* read_word ) (scalar_t__) ;scalar_t__ base; } ;
struct mtd_info {struct onenand_chip* priv; } ;


 unsigned int ONENAND_INT_MASTER ;
 scalar_t__ ONENAND_REG_INTERRUPT ;
 unsigned int stub1 (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void onenand_panic_wait(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 unsigned int interrupt;
 int i;

 for (i = 0; i < 2000; i++) {
  interrupt = this->read_word(this->base + ONENAND_REG_INTERRUPT);
  if (interrupt & ONENAND_INT_MASTER)
   break;
  udelay(10);
 }
}
