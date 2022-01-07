
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_nvram_char(char c)
{

 if (c == '#')
  return 0;


 return (c >= 0x20 && c < 0x7f);
}
