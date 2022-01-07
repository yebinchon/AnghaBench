
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int B43_WARN_ON (int) ;
 int * b43_radio_channel_codes_bg ;

__attribute__((used)) static inline u16 channel2freq_bg(u8 channel)
{
 B43_WARN_ON(!(channel >= 1 && channel <= 14));

 return b43_radio_channel_codes_bg[channel - 1];
}
