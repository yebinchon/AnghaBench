
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ strength; scalar_t__ step_size; } ;
struct TYPE_8__ {TYPE_3__ eccreq; } ;
struct TYPE_5__ {scalar_t__ strength; scalar_t__ size; } ;
struct nand_chip {TYPE_4__ base; TYPE_1__ ecc; } ;
struct gpmi_nand_data {TYPE_2__* dev; struct nand_chip nand; } ;
struct TYPE_6__ {int of_node; } ;


 int EINVAL ;
 scalar_t__ legacy_set_geometry (struct gpmi_nand_data*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int set_geometry_by_ecc_info (struct gpmi_nand_data*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int common_nfc_set_geometry(struct gpmi_nand_data *this)
{
 struct nand_chip *chip = &this->nand;

 if (chip->ecc.strength > 0 && chip->ecc.size > 0)
  return set_geometry_by_ecc_info(this, chip->ecc.strength,
      chip->ecc.size);

 if ((of_property_read_bool(this->dev->of_node, "fsl,use-minimum-ecc"))
    || legacy_set_geometry(this)) {
  if (!(chip->base.eccreq.strength > 0 &&
        chip->base.eccreq.step_size > 0))
   return -EINVAL;

  return set_geometry_by_ecc_info(this,
      chip->base.eccreq.strength,
      chip->base.eccreq.step_size);
 }

 return 0;
}
