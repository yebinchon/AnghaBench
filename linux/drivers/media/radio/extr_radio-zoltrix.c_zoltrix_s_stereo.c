
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int freq; } ;


 int zoltrix_s_frequency (struct radio_isa_card*,int ) ;

__attribute__((used)) static int zoltrix_s_stereo(struct radio_isa_card *isa, bool stereo)
{
 return zoltrix_s_frequency(isa, isa->freq);
}
