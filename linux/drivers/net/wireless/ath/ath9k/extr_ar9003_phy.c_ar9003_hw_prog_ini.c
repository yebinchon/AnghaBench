
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ar5416IniArray {int ia_columns; unsigned int ia_rows; int ia_array; } ;


 int DO_DELAY (unsigned int) ;
 int INI_RA (struct ar5416IniArray*,unsigned int,int) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9003_hw_prog_ini(struct ath_hw *ah,
          struct ar5416IniArray *iniArr,
          int column)
{
 unsigned int i, regWrites = 0;


 if (!iniArr->ia_array)
  return;






 if (column >= iniArr->ia_columns)
  column = 1;

 for (i = 0; i < iniArr->ia_rows; i++) {
  u32 reg = INI_RA(iniArr, i, 0);
  u32 val = INI_RA(iniArr, i, column);

  REG_WRITE(ah, reg, val);

  DO_DELAY(regWrites);
 }
}
