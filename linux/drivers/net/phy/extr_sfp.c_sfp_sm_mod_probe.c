
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int diagmon; int phys_ext_id; int phys_id; int datecode; int vendor_sn; int vendor_rev; int vendor_pn; int vendor_name; int cc_ext; int cc_base; } ;
struct sfp_eeprom_id {TYPE_2__ ext; TYPE_2__ base; } ;
struct sfp {struct sfp_eeprom_id id; int sfp_bus; int dev; TYPE_1__* type; } ;
typedef int id ;
struct TYPE_4__ {int (* module_supported ) (struct sfp_eeprom_id*) ;} ;


 int DUMP_PREFIX_OFFSET ;
 int EAGAIN ;
 int EINVAL ;
 int KERN_ERR ;
 int SFP_DIAGMON_ADDRMODE ;
 int dev_err (int ,char*,int,...) ;
 int dev_info (int ,char*,int,int ,int,int ,int,int ,int,int ,int,int ) ;
 int dev_warn (int ,char*,...) ;
 int memcmp (int ,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int print_hex_dump (int ,char*,int ,int,int,struct sfp_eeprom_id*,int,int) ;
 int sfp_check (TYPE_2__*,int) ;
 int sfp_hwmon_insert (struct sfp*) ;
 int sfp_module_insert (int ,struct sfp_eeprom_id*) ;
 int sfp_read (struct sfp*,int,int ,struct sfp_eeprom_id*,int) ;
 int sfp_sm_mod_hpower (struct sfp*) ;
 int stub1 (struct sfp_eeprom_id*) ;

__attribute__((used)) static int sfp_sm_mod_probe(struct sfp *sfp)
{

 struct sfp_eeprom_id id;
 bool cotsworks;
 u8 check;
 int ret;

 ret = sfp_read(sfp, 0, 0, &id, sizeof(id));
 if (ret < 0) {
  dev_err(sfp->dev, "failed to read EEPROM: %d\n", ret);
  return -EAGAIN;
 }

 if (ret != sizeof(id)) {
  dev_err(sfp->dev, "EEPROM short read: %d\n", ret);
  return -EAGAIN;
 }





 cotsworks = !memcmp(id.base.vendor_name, "COTSWORKS       ", 16);


 check = sfp_check(&id.base, sizeof(id.base) - 1);
 if (check != id.base.cc_base) {
  if (cotsworks) {
   dev_warn(sfp->dev,
     "EEPROM base structure checksum failure (0x%02x != 0x%02x)\n",
     check, id.base.cc_base);
  } else {
   dev_err(sfp->dev,
    "EEPROM base structure checksum failure: 0x%02x != 0x%02x\n",
    check, id.base.cc_base);
   print_hex_dump(KERN_ERR, "sfp EE: ", DUMP_PREFIX_OFFSET,
           16, 1, &id, sizeof(id), 1);
   return -EINVAL;
  }
 }

 check = sfp_check(&id.ext, sizeof(id.ext) - 1);
 if (check != id.ext.cc_ext) {
  if (cotsworks) {
   dev_warn(sfp->dev,
     "EEPROM extended structure checksum failure (0x%02x != 0x%02x)\n",
     check, id.ext.cc_ext);
  } else {
   dev_err(sfp->dev,
    "EEPROM extended structure checksum failure: 0x%02x != 0x%02x\n",
    check, id.ext.cc_ext);
   print_hex_dump(KERN_ERR, "sfp EE: ", DUMP_PREFIX_OFFSET,
           16, 1, &id, sizeof(id), 1);
   memset(&id.ext, 0, sizeof(id.ext));
  }
 }

 sfp->id = id;

 dev_info(sfp->dev, "module %.*s %.*s rev %.*s sn %.*s dc %.*s\n",
   (int)sizeof(id.base.vendor_name), id.base.vendor_name,
   (int)sizeof(id.base.vendor_pn), id.base.vendor_pn,
   (int)sizeof(id.base.vendor_rev), id.base.vendor_rev,
   (int)sizeof(id.ext.vendor_sn), id.ext.vendor_sn,
   (int)sizeof(id.ext.datecode), id.ext.datecode);


 if (!sfp->type->module_supported(&sfp->id)) {
  dev_err(sfp->dev,
   "module is not supported - phys id 0x%02x 0x%02x\n",
   sfp->id.base.phys_id, sfp->id.base.phys_ext_id);
  return -EINVAL;
 }


 if (sfp->id.ext.diagmon & SFP_DIAGMON_ADDRMODE)
  dev_warn(sfp->dev,
    "module address swap to access page 0xA2 is not supported.\n");

 ret = sfp_hwmon_insert(sfp);
 if (ret < 0)
  return ret;

 ret = sfp_module_insert(sfp->sfp_bus, &sfp->id);
 if (ret < 0)
  return ret;

 return sfp_sm_mod_hpower(sfp);
}
