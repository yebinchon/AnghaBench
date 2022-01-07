
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u32 ;



__attribute__((used)) static uint32_t qlcnic_temp_checksum(uint32_t *temp_buffer, u32 temp_size)
{
 uint64_t sum = 0;
 int count = temp_size / sizeof(uint32_t);
 while (count-- > 0)
  sum += *temp_buffer++;
 while (sum >> 32)
  sum = (sum & 0xFFFFFFFF) + (sum >> 32);
 return ~sum;
}
