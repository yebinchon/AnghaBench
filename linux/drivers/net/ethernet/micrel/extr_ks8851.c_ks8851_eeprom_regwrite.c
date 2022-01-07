
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int dummy; } ;
struct eeprom_93cx6 {scalar_t__ reg_chip_select; scalar_t__ reg_data_clock; scalar_t__ reg_data_in; scalar_t__ drive_data; struct ks8851_net* data; } ;


 unsigned int EEPCR_EECS ;
 unsigned int EEPCR_EEDO ;
 unsigned int EEPCR_EESA ;
 unsigned int EEPCR_EESCK ;
 unsigned int EEPCR_EESRWA ;
 int KS_EEPCR ;
 int ks8851_wrreg16 (struct ks8851_net*,int ,unsigned int) ;

__attribute__((used)) static void ks8851_eeprom_regwrite(struct eeprom_93cx6 *ee)
{
 struct ks8851_net *ks = ee->data;
 unsigned val = EEPCR_EESA;

 if (ee->drive_data)
  val |= EEPCR_EESRWA;
 if (ee->reg_data_in)
  val |= EEPCR_EEDO;
 if (ee->reg_data_clock)
  val |= EEPCR_EESCK;
 if (ee->reg_chip_select)
  val |= EEPCR_EECS;

 ks8851_wrreg16(ks, KS_EEPCR, val);
}
