
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_tea5777 {int band; } ;




 int TEA5777_AM_FREQ_STEP ;
 int TEA5777_AM_IF ;
 int TEA5777_FM_FREQ_STEP ;
 int TEA5777_FM_IF ;

__attribute__((used)) static u32 tea5777_freq_to_v4l2_freq(struct radio_tea5777 *tea, u32 freq)
{
 switch (tea->band) {
 case 128:
  return (freq * TEA5777_FM_FREQ_STEP + TEA5777_FM_IF) * 16;
 case 129:
  return (freq * TEA5777_AM_FREQ_STEP + TEA5777_AM_IF) * 16;
 }
 return 0;
}
