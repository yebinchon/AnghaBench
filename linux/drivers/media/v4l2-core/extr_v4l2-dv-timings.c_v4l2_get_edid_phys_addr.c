
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u16 ;


 int const CEC_PHYS_ADDR_INVALID ;
 unsigned int cec_get_edid_spa_location (int const*,unsigned int) ;

u16 v4l2_get_edid_phys_addr(const u8 *edid, unsigned int size,
       unsigned int *offset)
{
 unsigned int loc = cec_get_edid_spa_location(edid, size);

 if (offset)
  *offset = loc;
 if (loc == 0)
  return CEC_PHYS_ADDR_INVALID;
 return (edid[loc] << 8) | edid[loc + 1];
}
