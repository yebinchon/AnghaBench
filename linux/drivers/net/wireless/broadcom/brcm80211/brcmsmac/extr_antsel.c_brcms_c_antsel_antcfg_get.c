
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* ant_config; } ;
struct antsel_info {TYPE_1__ antcfg_11n; } ;


 int ANT_SELCFG_AUTO ;
 size_t ANT_SELCFG_TX_DEF ;
 size_t ANT_SELCFG_TX_UNICAST ;
 int brcms_c_antsel_id2antcfg (struct antsel_info*,int) ;

void
brcms_c_antsel_antcfg_get(struct antsel_info *asi, bool usedef, bool sel,
        u8 antselid, u8 fbantselid, u8 *antcfg,
        u8 *fbantcfg)
{
 u8 ant;


 if (usedef) {
  *antcfg = asi->antcfg_11n.ant_config[ANT_SELCFG_TX_DEF];
  *fbantcfg = *antcfg;
  return;
 }

 if (!sel) {
  *antcfg = asi->antcfg_11n.ant_config[ANT_SELCFG_TX_UNICAST];
  *fbantcfg = *antcfg;

 } else {
  ant = asi->antcfg_11n.ant_config[ANT_SELCFG_TX_UNICAST];
  if ((ant & ANT_SELCFG_AUTO) == ANT_SELCFG_AUTO) {
   *antcfg = brcms_c_antsel_id2antcfg(asi, antselid);
   *fbantcfg = brcms_c_antsel_id2antcfg(asi, fbantselid);
  } else {
   *antcfg =
       asi->antcfg_11n.ant_config[ANT_SELCFG_TX_UNICAST];
   *fbantcfg = *antcfg;
  }
 }
 return;
}
