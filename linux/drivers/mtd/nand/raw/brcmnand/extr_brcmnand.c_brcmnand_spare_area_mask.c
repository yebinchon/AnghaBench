
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmnand_controller {int nand_version; } ;


 int GENMASK (int,int ) ;

__attribute__((used)) static inline u32 brcmnand_spare_area_mask(struct brcmnand_controller *ctrl)
{
 if (ctrl->nand_version == 0x0702)
  return GENMASK(7, 0);
 else if (ctrl->nand_version >= 0x0600)
  return GENMASK(6, 0);
 else
  return GENMASK(5, 0);
}
