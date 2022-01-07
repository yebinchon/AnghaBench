
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalpha (char const) ;
 int isdigit (char const) ;

__attribute__((used)) static bool is_good_mode_name(const char *name)
{
 while (*name != '\0') {
  if (!isalpha(*name) && !isdigit(*name) && *name != '_')
   return 0;
  name++;
 }
 return 1;
}
