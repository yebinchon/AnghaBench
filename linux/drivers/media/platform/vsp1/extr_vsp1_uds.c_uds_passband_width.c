
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int uds_passband_width(unsigned int ratio)
{
 if (ratio >= 4096) {

  unsigned int mp;

  mp = ratio / 4096;
  mp = mp < 4 ? 1 : (mp < 8 ? 2 : 4);

  return 64 * 4096 * mp / ratio;
 } else {

  return 64;
 }
}
