
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct octeon_device {size_t octeon_id; int chip_id; } ;
struct TYPE_2__ {int conf_type; } ;


 int LIO_210NV ;
 int LIO_410NV ;
 int OCTEON_CN23XX_PF_VID ;
 int OCTEON_CN23XX_VF_VID ;
 int OCTEON_CN66XX ;
 int OCTEON_CN68XX ;

 int default_cn23xx_conf ;
 int default_cn66xx_conf ;
 int default_cn68xx_210nv_conf ;
 int default_cn68xx_conf ;
 TYPE_1__* oct_conf_info ;

__attribute__((used)) static void *__retrieve_octeon_config_info(struct octeon_device *oct,
        u16 card_type)
{
 u32 oct_id = oct->octeon_id;
 void *ret = ((void*)0);

 switch (oct_conf_info[oct_id].conf_type) {
 case 128:
  if (oct->chip_id == OCTEON_CN66XX) {
   ret = &default_cn66xx_conf;
  } else if ((oct->chip_id == OCTEON_CN68XX) &&
      (card_type == LIO_210NV)) {
   ret = &default_cn68xx_210nv_conf;
  } else if ((oct->chip_id == OCTEON_CN68XX) &&
      (card_type == LIO_410NV)) {
   ret = &default_cn68xx_conf;
  } else if (oct->chip_id == OCTEON_CN23XX_PF_VID) {
   ret = &default_cn23xx_conf;
  } else if (oct->chip_id == OCTEON_CN23XX_VF_VID) {
   ret = &default_cn23xx_conf;
  }
  break;
 default:
  break;
 }
 return ret;
}
