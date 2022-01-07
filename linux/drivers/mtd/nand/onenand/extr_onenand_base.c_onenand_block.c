
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int erase_shift; } ;
typedef int loff_t ;


 int FLEXONENAND (struct onenand_chip*) ;
 int flexonenand_block (struct onenand_chip*,int) ;

inline unsigned onenand_block(struct onenand_chip *this, loff_t addr)
{
 if (!FLEXONENAND(this))
  return addr >> this->erase_shift;
 return flexonenand_block(this, addr);
}
