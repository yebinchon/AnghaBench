
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int chip_id; } ;






 int lio_validate_cn6xxx_config_info (struct octeon_device*,void*) ;

__attribute__((used)) static int __verify_octeon_config_info(struct octeon_device *oct, void *conf)
{
 switch (oct->chip_id) {
 case 129:
 case 128:
  return lio_validate_cn6xxx_config_info(oct, conf);
 case 131:
 case 130:
  return 0;
 default:
  break;
 }

 return 1;
}
