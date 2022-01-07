
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int (* read_word ) (scalar_t__) ;scalar_t__ base; } ;


 int FLEXONENAND (struct onenand_chip*) ;
 int FLEXONENAND_UNCORRECTABLE_ERROR ;
 int ONENAND_ECC_1BIT_ALL ;
 int ONENAND_ECC_2BIT_ALL ;
 int ONENAND_IS_4KB_PAGE (struct onenand_chip*) ;
 scalar_t__ ONENAND_REG_ECC_STATUS ;
 scalar_t__ likely (int) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static inline int onenand_read_ecc(struct onenand_chip *this)
{
 int ecc, i, result = 0;

 if (!FLEXONENAND(this) && !ONENAND_IS_4KB_PAGE(this))
  return this->read_word(this->base + ONENAND_REG_ECC_STATUS);

 for (i = 0; i < 4; i++) {
  ecc = this->read_word(this->base + ONENAND_REG_ECC_STATUS + i*2);
  if (likely(!ecc))
   continue;
  if (ecc & FLEXONENAND_UNCORRECTABLE_ERROR)
   return ONENAND_ECC_2BIT_ALL;
  else
   result = ONENAND_ECC_1BIT_ALL;
 }

 return result;
}
