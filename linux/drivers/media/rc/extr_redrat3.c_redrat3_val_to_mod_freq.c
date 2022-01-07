
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct redrat3_irdata {int num_periods; int mod_freq_count; } ;


 int RR3_CLK ;
 int RR3_CLK_PER_COUNT ;
 int be16_to_cpu (int ) ;

__attribute__((used)) static u32 redrat3_val_to_mod_freq(struct redrat3_irdata *irdata)
{
 u32 mod_freq = 0;
 u16 mod_freq_count = be16_to_cpu(irdata->mod_freq_count);

 if (mod_freq_count != 0)
  mod_freq = (RR3_CLK * be16_to_cpu(irdata->num_periods)) /
   (mod_freq_count * RR3_CLK_PER_COUNT);

 return mod_freq;
}
