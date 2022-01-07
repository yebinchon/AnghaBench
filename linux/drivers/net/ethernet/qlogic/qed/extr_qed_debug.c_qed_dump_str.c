
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static u32 qed_dump_str(char *dump_buf, bool dump, const char *str)
{
 if (dump)
  strcpy(dump_buf, str);

 return (u32)strlen(str) + 1;
}
