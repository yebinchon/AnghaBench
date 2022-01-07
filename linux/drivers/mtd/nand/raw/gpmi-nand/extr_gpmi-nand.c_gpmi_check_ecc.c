
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bch_geometry {int gf_len; scalar_t__ ecc_strength; } ;
struct gpmi_nand_data {TYPE_1__* devdata; struct bch_geometry bch_geometry; } ;
struct TYPE_2__ {scalar_t__ bch_max_ecc_strength; } ;


 scalar_t__ GPMI_IS_MXS (struct gpmi_nand_data*) ;

__attribute__((used)) static inline bool gpmi_check_ecc(struct gpmi_nand_data *this)
{
 struct bch_geometry *geo = &this->bch_geometry;


 if (GPMI_IS_MXS(this)) {

  if (geo->gf_len == 14)
   return 0;
 }
 return geo->ecc_strength <= this->devdata->bch_max_ecc_strength;
}
