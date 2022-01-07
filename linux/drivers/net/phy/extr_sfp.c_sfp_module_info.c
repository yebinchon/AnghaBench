
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int diagmon; scalar_t__ sff8472_compliance; } ;
struct TYPE_4__ {TYPE_1__ ext; } ;
struct sfp {TYPE_2__ id; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;


 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;
 int ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;
 int SFP_DIAGMON_ADDRMODE ;

__attribute__((used)) static int sfp_module_info(struct sfp *sfp, struct ethtool_modinfo *modinfo)
{


 if (sfp->id.ext.sff8472_compliance &&
     !(sfp->id.ext.diagmon & SFP_DIAGMON_ADDRMODE)) {
  modinfo->type = ETH_MODULE_SFF_8472;
  modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
 } else {
  modinfo->type = ETH_MODULE_SFF_8079;
  modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
 }
 return 0;
}
