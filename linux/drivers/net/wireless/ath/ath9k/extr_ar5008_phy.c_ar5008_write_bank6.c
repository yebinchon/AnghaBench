
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5416IniArray {int ia_rows; } ;
struct ath_hw {int * analogBank6Data; struct ar5416IniArray iniBank6; } ;


 int DO_DELAY (unsigned int) ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int INI_RA (struct ar5416IniArray*,int,int ) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar5008_write_bank6(struct ath_hw *ah, unsigned int *writecnt)
{
 struct ar5416IniArray *array = &ah->iniBank6;
 u32 *data = ah->analogBank6Data;
 int r;

 ENABLE_REGWRITE_BUFFER(ah);

 for (r = 0; r < array->ia_rows; r++) {
  REG_WRITE(ah, INI_RA(array, r, 0), data[r]);
  DO_DELAY(*writecnt);
 }

 REGWRITE_BUFFER_FLUSH(ah);
}
