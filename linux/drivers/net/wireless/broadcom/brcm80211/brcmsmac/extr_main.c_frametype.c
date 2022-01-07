
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int FT_CCK ;
 int FT_OFDM ;
 scalar_t__ is_cck_rate (int ) ;
 scalar_t__ is_mcs_rate (int ) ;

__attribute__((used)) static u16 frametype(u32 rspec, u8 mimoframe)
{
 if (is_mcs_rate(rspec))
  return mimoframe;
 return is_cck_rate(rspec) ? FT_CCK : FT_OFDM;
}
