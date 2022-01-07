
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B43_CCK_RATE_11MB ;
 int B43_CCK_RATE_1MB ;
 int B43_CCK_RATE_2MB ;
 int B43_CCK_RATE_5MB ;

__attribute__((used)) static inline int b43_is_cck_rate(int rate)
{
 return (rate == B43_CCK_RATE_1MB ||
  rate == B43_CCK_RATE_2MB ||
  rate == B43_CCK_RATE_5MB || rate == B43_CCK_RATE_11MB);
}
