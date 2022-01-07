
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int get_unaligned (int*) ;
 int put_unaligned (int,int*) ;

__attribute__((used)) static void nfp_fl_set_helper32(u32 value, u32 mask, u8 *p_exact, u8 *p_mask)
{
 u32 oldvalue = get_unaligned((u32 *)p_exact);
 u32 oldmask = get_unaligned((u32 *)p_mask);

 value &= mask;
 value |= oldvalue & ~mask;

 put_unaligned(oldmask | mask, (u32 *)p_mask);
 put_unaligned(value, (u32 *)p_exact);
}
