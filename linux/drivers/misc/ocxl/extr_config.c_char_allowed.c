
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool char_allowed(int c)
{



 if ((c >= 0x30 && c <= 0x39) ||
  (c >= 0x41 && c <= 0x5A) ||
  (c >= 0x61 && c <= 0x7A) ||
  c == 0 ||
  c == 0x2D ||
  c == 0x5F ||
  c == 0x2C )
  return 1;
 return 0;
}
