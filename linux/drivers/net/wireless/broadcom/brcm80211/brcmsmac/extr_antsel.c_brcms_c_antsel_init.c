
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct antsel_info {scalar_t__ antsel_type; int antcfg_11n; } ;


 scalar_t__ ANTSEL_2x3 ;
 scalar_t__ ANTSEL_2x4 ;
 int brcms_c_antsel_cfgupd (struct antsel_info*,int *) ;

void brcms_c_antsel_init(struct antsel_info *asi)
{
 if ((asi->antsel_type == ANTSEL_2x3) ||
     (asi->antsel_type == ANTSEL_2x4))
  brcms_c_antsel_cfgupd(asi, &asi->antcfg_11n);
}
