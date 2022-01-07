
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char const*) ;

__attribute__((used)) static bool brcms_c_country_valid(const char *ccode)
{




 if (!((ccode[0] & 0x80) == 0 && ccode[0] >= 0x41 && ccode[0] <= 0x5A &&
       (ccode[1] & 0x80) == 0 && ccode[1] >= 0x41 && ccode[1] <= 0x5A))
  return 0;





 if (!strcmp("AA", ccode) ||
     !strcmp("ZZ", ccode) ||
     ccode[0] == 'X' ||
     (ccode[0] == 'Q' &&
      (ccode[1] >= 'M' && ccode[1] <= 'Z')))
  return 0;

 if (!strcmp("NA", ccode))
  return 0;

 return 1;
}
