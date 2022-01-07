
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bcm_sysport_stat_type { ____Placeholder_bcm_sysport_stat_type } bcm_sysport_stat_type ;
__attribute__((used)) static inline bool bcm_sysport_lite_stat_valid(enum bcm_sysport_stat_type type)
{
 switch (type) {
 case 132:
 case 131:
 case 129:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}
