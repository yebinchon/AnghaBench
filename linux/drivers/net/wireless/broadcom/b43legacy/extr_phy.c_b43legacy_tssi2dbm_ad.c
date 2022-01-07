
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static inline
s32 b43legacy_tssi2dbm_ad(s32 num, s32 den)
{
 if (num < 0)
  return num/den;
 else
  return (num+den/2)/den;
}
