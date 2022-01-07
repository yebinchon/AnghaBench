
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct radio_tea5777 {size_t band; int write_reg; int needs_write; int read_reg; int freq; TYPE_1__* ops; int audmode; } ;
struct TYPE_4__ {int rangehigh; int rangelow; } ;
struct TYPE_3__ {int (* write_reg ) (struct radio_tea5777*,long long) ;} ;




 int TEA5777_AM_FREQ_STEP ;
 int TEA5777_AM_IF ;
 int TEA5777_FM_FREQ_STEP ;
 int TEA5777_FM_IF ;
 int TEA5777_W_AM_AGCRF_MASK ;
 long long TEA5777_W_AM_CALLIGN_MASK ;
 int TEA5777_W_AM_FM_MASK ;
 long long TEA5777_W_AM_FM_SHIFT ;
 int TEA5777_W_AM_LNA_MASK ;
 long long TEA5777_W_AM_LNA_SHIFT ;
 int TEA5777_W_AM_MW ;
 int TEA5777_W_AM_MWLW_MASK ;
 int TEA5777_W_AM_MWLW_SHIFT ;
 long long TEA5777_W_AM_PEAK_MASK ;
 long long TEA5777_W_AM_PEAK_SHIFT ;
 long long TEA5777_W_AM_PLL_MASK ;
 int TEA5777_W_AM_PLL_SHIFT ;
 int TEA5777_W_FM_FORCEMONO_MASK ;
 long long TEA5777_W_FM_FORCEMONO_SHIFT ;
 int TEA5777_W_FM_FREF_MASK ;
 int TEA5777_W_FM_FREF_SHIFT ;
 int TEA5777_W_FM_FREF_VALUE ;
 int TEA5777_W_FM_PLL_MASK ;
 int TEA5777_W_FM_PLL_SHIFT ;
 int V4L2_TUNER_MODE_MONO ;
 TYPE_2__* bands ;
 int clamp (int ,int ,int ) ;
 int stub1 (struct radio_tea5777*,long long) ;
 int tea5777_freq_to_v4l2_freq (struct radio_tea5777*,int) ;

int radio_tea5777_set_freq(struct radio_tea5777 *tea)
{
 u32 freq;
 int res;

 freq = clamp(tea->freq, bands[tea->band].rangelow,
    bands[tea->band].rangehigh);
 freq = (freq + 8) / 16;

 switch (tea->band) {
 case 128:
  tea->write_reg &= ~TEA5777_W_AM_FM_MASK;
  freq = (freq - TEA5777_FM_IF) / TEA5777_FM_FREQ_STEP;
  tea->write_reg &= ~TEA5777_W_FM_PLL_MASK;
  tea->write_reg |= (u64)freq << TEA5777_W_FM_PLL_SHIFT;
  tea->write_reg &= ~TEA5777_W_FM_FREF_MASK;
  tea->write_reg |= TEA5777_W_FM_FREF_VALUE <<
      TEA5777_W_FM_FREF_SHIFT;
  tea->write_reg &= ~TEA5777_W_FM_FORCEMONO_MASK;
  if (tea->audmode == V4L2_TUNER_MODE_MONO)
   tea->write_reg |= 1LL << TEA5777_W_FM_FORCEMONO_SHIFT;
  break;
 case 129:
  tea->write_reg &= ~TEA5777_W_AM_FM_MASK;
  tea->write_reg |= (1LL << TEA5777_W_AM_FM_SHIFT);
  freq = (freq - TEA5777_AM_IF) / TEA5777_AM_FREQ_STEP;
  tea->write_reg &= ~TEA5777_W_AM_PLL_MASK;
  tea->write_reg |= (u64)freq << TEA5777_W_AM_PLL_SHIFT;
  tea->write_reg &= ~TEA5777_W_AM_AGCRF_MASK;
  tea->write_reg &= ~TEA5777_W_AM_AGCRF_MASK;
  tea->write_reg &= ~TEA5777_W_AM_MWLW_MASK;
  tea->write_reg |= TEA5777_W_AM_MW << TEA5777_W_AM_MWLW_SHIFT;
  tea->write_reg &= ~TEA5777_W_AM_LNA_MASK;
  tea->write_reg |= 1LL << TEA5777_W_AM_LNA_SHIFT;
  tea->write_reg &= ~TEA5777_W_AM_PEAK_MASK;
  tea->write_reg |= 1LL << TEA5777_W_AM_PEAK_SHIFT;
  tea->write_reg &= ~TEA5777_W_AM_CALLIGN_MASK;
  break;
 }

 res = tea->ops->write_reg(tea, tea->write_reg);
 if (res)
  return res;

 tea->needs_write = 0;
 tea->read_reg = -1;
 tea->freq = tea5777_freq_to_v4l2_freq(tea, freq);

 return 0;
}
