
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 int rnd_next ;

__attribute__((used)) static unsigned int mmc_test_rnd_num(unsigned int rnd_cnt)
{
 uint64_t r;

 rnd_next = rnd_next * 1103515245 + 12345;
 r = (rnd_next >> 16) & 0x7fff;
 return (r * rnd_cnt) >> 15;
}
