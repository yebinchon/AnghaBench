
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 mod_freq_to_val(unsigned int mod_freq)
{
 int mult = 6000000;


 return 65536 - (mult / mod_freq);
}
