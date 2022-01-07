
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int subsystem_device; int * hwconfig; } ;
 int unknown_device ;
 int vp1033_mantis_config ;
 int vp1034_mantis_config ;
 int vp1041_mantis_config ;
 int vp2033_mantis_config ;
 int vp2040_mantis_config ;
 int vp3030_mantis_config ;

__attribute__((used)) static void mantis_load_config(struct mantis_pci *mantis)
{
 switch (mantis->subsystem_device) {
 case 135:
  mantis->hwconfig = &vp1033_mantis_config;
  break;
 case 134:
  mantis->hwconfig = &vp1034_mantis_config;
  break;
 case 133:
 case 128:
  mantis->hwconfig = &vp1041_mantis_config;
  break;
 case 132:
  mantis->hwconfig = &vp2033_mantis_config;
  break;
 case 131:
 case 136:
 case 129:
  mantis->hwconfig = &vp2040_mantis_config;
  break;
 case 130:
  mantis->hwconfig = &vp3030_mantis_config;
  break;
 default:
  mantis->hwconfig = &unknown_device;
  break;
 }
}
