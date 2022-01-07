
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline
u8 b43legacy_freq_to_channel_bg(int freq)
{
 u8 channel;

 if (freq == 2484)
  channel = 14;
 else
  channel = (freq - 2407) / 5;

 return channel;
}
