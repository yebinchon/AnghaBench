
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t int16_t ;


 size_t ATH_AIC_MAX_AIC_LIN_TABLE ;
 size_t ATH_AIC_MAX_COM_ATT_DB_TABLE ;
 size_t* aic_lin_table ;
 size_t* com_att_db_table ;

__attribute__((used)) static int16_t ar9003_aic_find_index(u8 type, int16_t value)
{
 int16_t i = -1;

 if (type == 0) {
  for (i = ATH_AIC_MAX_AIC_LIN_TABLE - 1; i >= 0; i--) {
   if (aic_lin_table[i] >= value)
    break;
  }
 } else if (type == 1) {
  for (i = 0; i < ATH_AIC_MAX_COM_ATT_DB_TABLE; i++) {
   if (com_att_db_table[i] > value) {
    i--;
    break;
   }
  }

  if (i >= ATH_AIC_MAX_COM_ATT_DB_TABLE)
   i = -1;
 }

 return i;
}
