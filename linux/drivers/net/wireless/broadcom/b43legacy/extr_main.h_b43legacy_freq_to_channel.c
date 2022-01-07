
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43legacy_wldev {int dummy; } ;


 int b43legacy_freq_to_channel_bg (int) ;

__attribute__((used)) static inline
u8 b43legacy_freq_to_channel(struct b43legacy_wldev *dev,
        int freq)
{
 return b43legacy_freq_to_channel_bg(freq);
}
