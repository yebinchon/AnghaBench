
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static bool mwifiex_is_valid_alpha2(const char *alpha2)
{
 if (!alpha2 || strlen(alpha2) != 2)
  return 0;

 if (isalpha(alpha2[0]) && isalpha(alpha2[1]))
  return 1;

 return 0;
}
