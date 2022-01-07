
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int uds_output_size(unsigned int input, unsigned int ratio)
{
 if (ratio > 4096) {

  unsigned int mp;

  mp = ratio / 4096;
  mp = mp < 4 ? 1 : (mp < 8 ? 2 : 4);

  return (input - 1) / mp * mp * 4096 / ratio + 1;
 } else {

  return (input - 1) * 4096 / ratio + 1;
 }
}
