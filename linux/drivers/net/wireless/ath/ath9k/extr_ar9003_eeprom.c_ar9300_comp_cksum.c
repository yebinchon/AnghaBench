
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;



__attribute__((used)) static u16 ar9300_comp_cksum(u8 *data, int dsize)
{
 int it, checksum = 0;

 for (it = 0; it < dsize; it++) {
  checksum += data[it];
  checksum &= 0xffff;
 }

 return checksum;
}
