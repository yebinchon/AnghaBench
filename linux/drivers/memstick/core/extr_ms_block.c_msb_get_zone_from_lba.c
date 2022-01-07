
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int msb_get_zone_from_lba(int lba)
{
 if (lba < 494)
  return 0;
 return ((lba - 494) / 496) + 1;
}
