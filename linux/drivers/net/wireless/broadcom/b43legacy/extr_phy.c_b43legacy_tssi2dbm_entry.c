
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;
typedef int s32 ;
typedef int s16 ;


 int EINVAL ;
 int abs (int) ;
 int b43legacy_tssi2dbm_ad (int,int) ;
 int clamp_val (int,int,int) ;
 int max (int,int) ;

__attribute__((used)) static inline
s8 b43legacy_tssi2dbm_entry(s8 entry [], u8 index, s16 pab0, s16 pab1, s16 pab2)
{
 s32 m1;
 s32 m2;
 s32 f = 256;
 s32 q;
 s32 delta;
 s8 i = 0;

 m1 = b43legacy_tssi2dbm_ad(16 * pab0 + index * pab1, 32);
 m2 = max(b43legacy_tssi2dbm_ad(32768 + index * pab2, 256), 1);
 do {
  if (i > 15)
   return -EINVAL;
  q = b43legacy_tssi2dbm_ad(f * 4096 -
       b43legacy_tssi2dbm_ad(m2 * f, 16) *
       f, 2048);
  delta = abs(q - f);
  f = q;
  i++;
 } while (delta >= 2);
 entry[index] = clamp_val(b43legacy_tssi2dbm_ad(m1 * f, 8192),
       -127, 128);
 return 0;
}
