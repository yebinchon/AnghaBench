
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 xor_chksum_set(void *data)
{
 int idx;
 u8 *val, checksum = 0;

 val = data;

 for (idx = 0; idx < 7; idx++)
  checksum ^= val[idx];

 return checksum;
}
