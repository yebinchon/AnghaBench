
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *mspro_block_attr_name(unsigned char tag)
{
 switch (tag) {
 case 128:
  return "attr_sysinfo";
 case 133:
  return "attr_modelname";
 case 134:
  return "attr_mbr";
 case 132:
  return "attr_pbr16";
 case 131:
  return "attr_pbr32";
 case 130:
  return "attr_specfilevalues1";
 case 129:
  return "attr_specfilevalues2";
 case 135:
  return "attr_devinfo";
 default:
  return ((void*)0);
 };
}
