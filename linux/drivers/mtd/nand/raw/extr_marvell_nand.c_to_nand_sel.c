
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marvell_nand_chip_sel {int dummy; } ;
struct marvell_nand_chip {size_t selected_die; struct marvell_nand_chip_sel* sels; } ;



__attribute__((used)) static inline struct marvell_nand_chip_sel *to_nand_sel(struct marvell_nand_chip
       *nand)
{
 return &nand->sels[nand->selected_die];
}
