
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int nand_version; } ;
struct brcmnand_cfg {scalar_t__ sector_size_1k; int spare_area_size; int ecc_level; } ;



__attribute__((used)) static inline bool is_hamming_ecc(struct brcmnand_controller *ctrl,
      struct brcmnand_cfg *cfg)
{
 if (ctrl->nand_version <= 0x0701)
  return cfg->sector_size_1k == 0 && cfg->spare_area_size == 16 &&
   cfg->ecc_level == 15;
 else
  return cfg->sector_size_1k == 0 && ((cfg->spare_area_size == 16 &&
   cfg->ecc_level == 15) ||
   (cfg->spare_area_size == 28 && cfg->ecc_level == 16));
}
