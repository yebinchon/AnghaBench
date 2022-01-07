
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int dummy; } ;


 int lm7000_set_freq (int ,struct radio_isa_card*,int ) ;
 int rtrack_set_pins ;

__attribute__((used)) static int rtrack_s_frequency(struct radio_isa_card *isa, u32 freq)
{
 lm7000_set_freq(freq, isa, rtrack_set_pins);

 return 0;
}
