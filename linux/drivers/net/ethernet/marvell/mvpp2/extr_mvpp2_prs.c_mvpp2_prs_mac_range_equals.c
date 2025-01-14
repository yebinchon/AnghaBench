
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct mvpp2_prs_entry {int dummy; } ;


 int ETH_ALEN ;
 int mvpp2_prs_tcam_data_byte_get (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ;

__attribute__((used)) static bool mvpp2_prs_mac_range_equals(struct mvpp2_prs_entry *pe,
           const u8 *da, unsigned char *mask)
{
 unsigned char tcam_byte, tcam_mask;
 int index;

 for (index = 0; index < ETH_ALEN; index++) {
  mvpp2_prs_tcam_data_byte_get(pe, index, &tcam_byte, &tcam_mask);
  if (tcam_mask != mask[index])
   return 0;

  if ((tcam_mask & tcam_byte) != (da[index] & mask[index]))
   return 0;
 }

 return 1;
}
