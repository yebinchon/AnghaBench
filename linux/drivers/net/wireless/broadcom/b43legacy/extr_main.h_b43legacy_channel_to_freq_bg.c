
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline
int b43legacy_channel_to_freq_bg(u8 channel)
{
 int freq;

 if (channel == 14)
  freq = 2484;
 else
  freq = 2407 + (5 * channel);

 return freq;
}
