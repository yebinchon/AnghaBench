
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static inline bool hl_mem_area_crosses_range(u64 address, u32 size,
    u64 range_start_address, u64 range_end_address)
{
 u64 end_address = address + size;

 if ((address >= range_start_address) &&
   (address < range_end_address))
  return 1;

 if ((end_address >= range_start_address) &&
   (end_address < range_end_address))
  return 1;

 if ((address < range_start_address) &&
   (end_address >= range_end_address))
  return 1;

 return 0;
}
