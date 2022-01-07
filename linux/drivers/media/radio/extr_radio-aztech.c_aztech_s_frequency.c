
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int dummy; } ;


 int aztech_set_pins ;
 int lm7000_set_freq (int ,struct radio_isa_card*,int ) ;

__attribute__((used)) static int aztech_s_frequency(struct radio_isa_card *isa, u32 freq)
{
 lm7000_set_freq(freq, isa, aztech_set_pins);

 return 0;
}
