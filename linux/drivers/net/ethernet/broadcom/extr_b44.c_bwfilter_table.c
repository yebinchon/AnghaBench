
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct b44 {int dummy; } ;


 int B44_FILT_ADDR ;
 int B44_FILT_DATA ;
 int bw32 (struct b44*,int ,int) ;

__attribute__((used)) static void bwfilter_table(struct b44 *bp, u8 *pp, u32 bytes, u32 table_offset)
{
 u32 i;
 u32 *pattern = (u32 *) pp;

 for (i = 0; i < bytes; i += sizeof(u32)) {
  bw32(bp, B44_FILT_ADDR, table_offset + i);
  bw32(bp, B44_FILT_DATA, pattern[i / sizeof(u32)]);
 }
}
