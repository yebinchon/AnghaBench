
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gswip_priv {int dummy; } ;
struct TYPE_3__ {int val_0; int val_1; int val_2; int val_3; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GSWIP_PCE_GCTRL_0 ;
 int GSWIP_PCE_GCTRL_0_MC_VALID ;
 int GSWIP_PCE_TBL_ADDR ;
 int GSWIP_PCE_TBL_CTRL ;
 int GSWIP_PCE_TBL_CTRL_ADDR_MASK ;
 int GSWIP_PCE_TBL_CTRL_BAS ;
 int GSWIP_PCE_TBL_CTRL_OPMOD_ADWR ;
 int GSWIP_PCE_TBL_CTRL_OPMOD_MASK ;
 int GSWIP_PCE_TBL_MASK ;
 int GSWIP_PCE_TBL_VAL (int) ;
 TYPE_1__* gswip_pce_microcode ;
 int gswip_switch_mask (struct gswip_priv*,int,int ,int ) ;
 int gswip_switch_r_timeout (struct gswip_priv*,int ,int ) ;
 int gswip_switch_w (struct gswip_priv*,int,int ) ;

__attribute__((used)) static int gswip_pce_load_microcode(struct gswip_priv *priv)
{
 int i;
 int err;

 gswip_switch_mask(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
    GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
     GSWIP_PCE_TBL_CTRL_OPMOD_ADWR, GSWIP_PCE_TBL_CTRL);
 gswip_switch_w(priv, 0, GSWIP_PCE_TBL_MASK);

 for (i = 0; i < ARRAY_SIZE(gswip_pce_microcode); i++) {
  gswip_switch_w(priv, i, GSWIP_PCE_TBL_ADDR);
  gswip_switch_w(priv, gswip_pce_microcode[i].val_0,
          GSWIP_PCE_TBL_VAL(0));
  gswip_switch_w(priv, gswip_pce_microcode[i].val_1,
          GSWIP_PCE_TBL_VAL(1));
  gswip_switch_w(priv, gswip_pce_microcode[i].val_2,
          GSWIP_PCE_TBL_VAL(2));
  gswip_switch_w(priv, gswip_pce_microcode[i].val_3,
          GSWIP_PCE_TBL_VAL(3));


  gswip_switch_mask(priv, 0, GSWIP_PCE_TBL_CTRL_BAS,
      GSWIP_PCE_TBL_CTRL);
  err = gswip_switch_r_timeout(priv, GSWIP_PCE_TBL_CTRL,
          GSWIP_PCE_TBL_CTRL_BAS);
  if (err)
   return err;
 }


 gswip_switch_mask(priv, 0, GSWIP_PCE_GCTRL_0_MC_VALID,
     GSWIP_PCE_GCTRL_0);

 return 0;
}
