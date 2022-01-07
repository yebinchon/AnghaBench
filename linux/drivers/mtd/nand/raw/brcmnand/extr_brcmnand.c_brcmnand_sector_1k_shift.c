
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int nand_version; } ;



__attribute__((used)) static inline int brcmnand_sector_1k_shift(struct brcmnand_controller *ctrl)
{
 if (ctrl->nand_version >= 0x0702)
  return 9;
 else if (ctrl->nand_version >= 0x0600)
  return 7;
 else if (ctrl->nand_version >= 0x0500)
  return 6;
 else
  return -1;
}
