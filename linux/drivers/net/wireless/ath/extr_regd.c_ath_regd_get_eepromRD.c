
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath_regulatory {int current_rd; } ;


 int WORLDWIDE_ROAMING_FLAG ;

__attribute__((used)) static u16 ath_regd_get_eepromRD(struct ath_regulatory *reg)
{
 return reg->current_rd & ~WORLDWIDE_ROAMING_FLAG;
}
