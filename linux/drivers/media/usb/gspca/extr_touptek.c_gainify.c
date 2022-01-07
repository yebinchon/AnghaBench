
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int gainify(int in)
{






 if (in <= 0x7F)
  return 0x1000 | in;
 else if (in <= 0xFF)
  return 0x1080 | in / 2;
 else
  return 0x1180 | in / 4;
}
