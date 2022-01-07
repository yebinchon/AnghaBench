
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int density_mask; int* diesize; int* boundary; int erase_shift; } ;
typedef int loff_t ;


 scalar_t__ ONENAND_IS_DDP (struct onenand_chip*) ;

__attribute__((used)) static loff_t flexonenand_addr(struct onenand_chip *this, int block)
{
 loff_t ofs = 0;
 int die = 0, boundary;

 if (ONENAND_IS_DDP(this) && block >= this->density_mask) {
  block -= this->density_mask;
  die = 1;
  ofs = this->diesize[0];
 }

 boundary = this->boundary[die];
 ofs += (loff_t)block << (this->erase_shift - 1);
 if (block > (boundary + 1))
  ofs += (loff_t)(block - boundary - 1) << (this->erase_shift - 1);
 return ofs;
}
