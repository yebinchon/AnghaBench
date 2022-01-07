
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 unsigned int cec_get_edid_spa_location (int*,unsigned int) ;

void v4l2_set_edid_phys_addr(u8 *edid, unsigned int size, u16 phys_addr)
{
 unsigned int loc = cec_get_edid_spa_location(edid, size);
 u8 sum = 0;
 unsigned int i;

 if (loc == 0)
  return;
 edid[loc] = phys_addr >> 8;
 edid[loc + 1] = phys_addr & 0xff;
 loc &= ~0x7f;


 for (i = loc; i < loc + 127; i++)
  sum += edid[i];
 edid[i] = 256 - sum;
}
