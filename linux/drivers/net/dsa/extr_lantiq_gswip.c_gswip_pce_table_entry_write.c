
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gswip_priv {int dummy; } ;
struct gswip_pce_table_entry {int index; int table; int* key; int* val; int mask; int gmap; scalar_t__ valid; scalar_t__ type; scalar_t__ key_mode; } ;


 int ARRAY_SIZE (int*) ;
 int GSWIP_PCE_TBL_ADDR ;
 int GSWIP_PCE_TBL_CTRL ;
 int GSWIP_PCE_TBL_CTRL_ADDR_MASK ;
 int GSWIP_PCE_TBL_CTRL_BAS ;
 int GSWIP_PCE_TBL_CTRL_GMAP_MASK ;
 int GSWIP_PCE_TBL_CTRL_OPMOD_ADWR ;
 int GSWIP_PCE_TBL_CTRL_OPMOD_KSWR ;
 int GSWIP_PCE_TBL_CTRL_OPMOD_MASK ;
 int GSWIP_PCE_TBL_CTRL_TYPE ;
 int GSWIP_PCE_TBL_CTRL_VLD ;
 int GSWIP_PCE_TBL_KEY (int) ;
 int GSWIP_PCE_TBL_MASK ;
 int GSWIP_PCE_TBL_VAL (int) ;
 int gswip_switch_mask (struct gswip_priv*,int,int,int ) ;
 int gswip_switch_r (struct gswip_priv*,int ) ;
 int gswip_switch_r_timeout (struct gswip_priv*,int ,int) ;
 int gswip_switch_w (struct gswip_priv*,int,int ) ;

__attribute__((used)) static int gswip_pce_table_entry_write(struct gswip_priv *priv,
           struct gswip_pce_table_entry *tbl)
{
 int i;
 int err;
 u16 crtl;
 u16 addr_mode = tbl->key_mode ? GSWIP_PCE_TBL_CTRL_OPMOD_KSWR :
     GSWIP_PCE_TBL_CTRL_OPMOD_ADWR;

 err = gswip_switch_r_timeout(priv, GSWIP_PCE_TBL_CTRL,
         GSWIP_PCE_TBL_CTRL_BAS);
 if (err)
  return err;

 gswip_switch_w(priv, tbl->index, GSWIP_PCE_TBL_ADDR);
 gswip_switch_mask(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
    GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
     tbl->table | addr_mode,
     GSWIP_PCE_TBL_CTRL);

 for (i = 0; i < ARRAY_SIZE(tbl->key); i++)
  gswip_switch_w(priv, tbl->key[i], GSWIP_PCE_TBL_KEY(i));

 for (i = 0; i < ARRAY_SIZE(tbl->val); i++)
  gswip_switch_w(priv, tbl->val[i], GSWIP_PCE_TBL_VAL(i));

 gswip_switch_mask(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
    GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
     tbl->table | addr_mode,
     GSWIP_PCE_TBL_CTRL);

 gswip_switch_w(priv, tbl->mask, GSWIP_PCE_TBL_MASK);

 crtl = gswip_switch_r(priv, GSWIP_PCE_TBL_CTRL);
 crtl &= ~(GSWIP_PCE_TBL_CTRL_TYPE | GSWIP_PCE_TBL_CTRL_VLD |
    GSWIP_PCE_TBL_CTRL_GMAP_MASK);
 if (tbl->type)
  crtl |= GSWIP_PCE_TBL_CTRL_TYPE;
 if (tbl->valid)
  crtl |= GSWIP_PCE_TBL_CTRL_VLD;
 crtl |= (tbl->gmap << 7) & GSWIP_PCE_TBL_CTRL_GMAP_MASK;
 crtl |= GSWIP_PCE_TBL_CTRL_BAS;
 gswip_switch_w(priv, crtl, GSWIP_PCE_TBL_CTRL);

 return gswip_switch_r_timeout(priv, GSWIP_PCE_TBL_CTRL,
          GSWIP_PCE_TBL_CTRL_BAS);
}
