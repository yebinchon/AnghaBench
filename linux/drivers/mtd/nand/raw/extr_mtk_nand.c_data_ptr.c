
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;



__attribute__((used)) static inline u8 *data_ptr(struct nand_chip *chip, const u8 *p, int i)
{
 return (u8 *)p + i * chip->ecc.size;
}
