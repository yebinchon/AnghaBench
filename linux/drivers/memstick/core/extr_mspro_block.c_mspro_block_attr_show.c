
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysfs_show_t ;
 int mspro_block_attr_show_default ;
 int mspro_block_attr_show_devinfo ;
 int mspro_block_attr_show_mbr ;
 int mspro_block_attr_show_modelname ;
 int mspro_block_attr_show_specfile ;
 int mspro_block_attr_show_sysinfo ;

__attribute__((used)) static sysfs_show_t mspro_block_attr_show(unsigned char tag)
{
 switch (tag) {
 case 128:
  return mspro_block_attr_show_sysinfo;
 case 131:
  return mspro_block_attr_show_modelname;
 case 132:
  return mspro_block_attr_show_mbr;
 case 130:
 case 129:
  return mspro_block_attr_show_specfile;
 case 133:
  return mspro_block_attr_show_devinfo;
 default:
  return mspro_block_attr_show_default;
 }
}
