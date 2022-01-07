
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum hl_asic_type { ____Placeholder_hl_asic_type } hl_asic_type ;


 int ASIC_GOYA ;
 int ASIC_INVALID ;


__attribute__((used)) static enum hl_asic_type get_asic_type(u16 device)
{
 enum hl_asic_type asic_type;

 switch (device) {
 case 128:
  asic_type = ASIC_GOYA;
  break;
 default:
  asic_type = ASIC_INVALID;
  break;
 }

 return asic_type;
}
