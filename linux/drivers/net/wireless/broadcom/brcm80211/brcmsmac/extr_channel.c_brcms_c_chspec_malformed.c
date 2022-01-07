
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ CHSPEC_IS20 (int ) ;
 int CHSPEC_IS2G (int ) ;
 int CHSPEC_IS40 (int ) ;
 int CHSPEC_IS5G (int ) ;
 int CHSPEC_SB_LOWER (int ) ;
 int CHSPEC_SB_NONE (int ) ;
 int CHSPEC_SB_UPPER (int ) ;

__attribute__((used)) static bool brcms_c_chspec_malformed(u16 chanspec)
{

 if (!CHSPEC_IS5G(chanspec) && !CHSPEC_IS2G(chanspec))
  return 1;

 if (!CHSPEC_IS40(chanspec) && !CHSPEC_IS20(chanspec))
  return 1;


 if (CHSPEC_IS20(chanspec)) {
  if (!CHSPEC_SB_NONE(chanspec))
   return 1;
 } else if (!CHSPEC_SB_UPPER(chanspec) && !CHSPEC_SB_LOWER(chanspec)) {
  return 1;
 }

 return 0;
}
