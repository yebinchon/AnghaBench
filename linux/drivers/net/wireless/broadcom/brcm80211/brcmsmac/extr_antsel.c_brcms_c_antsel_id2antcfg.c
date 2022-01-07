
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct antsel_info {scalar_t__ antsel_type; } ;


 scalar_t__ ANTSEL_2x3 ;
 scalar_t__ ANTSEL_2x4 ;
 int ANT_SELCFG_DEF_2x2 ;

__attribute__((used)) static u8 brcms_c_antsel_id2antcfg(struct antsel_info *asi, u8 id)
{
 u8 antcfg = ANT_SELCFG_DEF_2x2;

 if (asi->antsel_type == ANTSEL_2x4) {

  antcfg = (((id & 0x2) << 3) | ((id & 0x1) + 2));
  return antcfg;

 } else if (asi->antsel_type == ANTSEL_2x3) {

  antcfg = (((id & 0x02) << 4) | ((id & 0x1) + 1));
  return antcfg;
 }

 return antcfg;
}
