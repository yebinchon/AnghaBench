
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct brcms_c_info {int hw; } ;
struct brcms_antselcfg {void** ant_config; } ;
struct TYPE_2__ {void** ant_config; } ;
struct antsel_info {TYPE_1__ antcfg_cur; struct brcms_c_info* wlc; } ;


 size_t ANT_SELCFG_RX_DEF ;
 size_t ANT_SELCFG_TX_DEF ;
 int M_MIMO_ANTSEL_RXDFLT ;
 int M_MIMO_ANTSEL_TXDFLT ;
 int brcms_b_write_shm (int ,int ,int ) ;
 int brcms_c_antsel_antcfg2antsel (struct antsel_info*,void*) ;

__attribute__((used)) static int brcms_c_antsel_cfgupd(struct antsel_info *asi,
     struct brcms_antselcfg *antsel)
{
 struct brcms_c_info *wlc = asi->wlc;
 u8 ant_cfg;
 u16 mimo_antsel;




 ant_cfg = antsel->ant_config[ANT_SELCFG_TX_DEF];
 mimo_antsel = brcms_c_antsel_antcfg2antsel(asi, ant_cfg);
 brcms_b_write_shm(wlc->hw, M_MIMO_ANTSEL_TXDFLT, mimo_antsel);




 asi->antcfg_cur.ant_config[ANT_SELCFG_TX_DEF] = ant_cfg;




 ant_cfg = antsel->ant_config[ANT_SELCFG_RX_DEF];
 mimo_antsel = brcms_c_antsel_antcfg2antsel(asi, ant_cfg);
 brcms_b_write_shm(wlc->hw, M_MIMO_ANTSEL_RXDFLT, mimo_antsel);




 asi->antcfg_cur.ant_config[ANT_SELCFG_RX_DEF] = ant_cfg;

 return 0;
}
