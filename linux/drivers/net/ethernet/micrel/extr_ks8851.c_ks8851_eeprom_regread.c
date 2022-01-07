
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int dummy; } ;
struct eeprom_93cx6 {int reg_data_out; int reg_data_clock; int reg_chip_select; struct ks8851_net* data; } ;


 unsigned int EEPCR_EECS ;
 unsigned int EEPCR_EESB ;
 unsigned int EEPCR_EESCK ;
 int KS_EEPCR ;
 unsigned int ks8851_rdreg16 (struct ks8851_net*,int ) ;

__attribute__((used)) static void ks8851_eeprom_regread(struct eeprom_93cx6 *ee)
{
 struct ks8851_net *ks = ee->data;
 unsigned val;

 val = ks8851_rdreg16(ks, KS_EEPCR);

 ee->reg_data_out = (val & EEPCR_EESB) ? 1 : 0;
 ee->reg_data_clock = (val & EEPCR_EESCK) ? 1 : 0;
 ee->reg_chip_select = (val & EEPCR_EECS) ? 1 : 0;
}
