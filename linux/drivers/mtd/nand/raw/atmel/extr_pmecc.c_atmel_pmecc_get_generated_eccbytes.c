
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct atmel_pmecc_user {int eccbytes; struct atmel_pmecc* pmecc; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct atmel_pmecc {TYPE_1__ regs; } ;


 scalar_t__ ATMEL_PMECC_ECC (int,int) ;
 int readb_relaxed (scalar_t__) ;

void atmel_pmecc_get_generated_eccbytes(struct atmel_pmecc_user *user,
     int sector, void *ecc)
{
 struct atmel_pmecc *pmecc = user->pmecc;
 u8 *ptr = ecc;
 int i;

 for (i = 0; i < user->eccbytes; i++)
  ptr[i] = readb_relaxed(pmecc->regs.base +
           ATMEL_PMECC_ECC(sector, i));
}
