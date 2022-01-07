
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool brcms_c_japan_ccode(const char *ccode)
{
 return (ccode[0] == 'J' &&
  (ccode[1] == 'P' || (ccode[1] >= '1' && ccode[1] <= '9')));
}
