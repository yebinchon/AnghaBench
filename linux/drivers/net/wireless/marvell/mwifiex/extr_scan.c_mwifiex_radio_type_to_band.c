
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BAND_A ;
 int BAND_G ;



__attribute__((used)) static u8
mwifiex_radio_type_to_band(u8 radio_type)
{
 switch (radio_type) {
 case 129:
  return BAND_A;
 case 128:
 default:
  return BAND_G;
 }
}
