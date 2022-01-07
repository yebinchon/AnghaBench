
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b43legacy_is_cck_rate (int) ;

__attribute__((used)) static inline
int b43legacy_is_ofdm_rate(int rate)
{
 return !b43legacy_is_cck_rate(rate);
}
