
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int GSW_TRGMII_RCK_CTRL ;
 int GSW_TRGMII_TD_ODT (int) ;
 int NUM_TRGMII_CTRL ;
 int RXC_DQSISEL ;
 int RX_RST ;
 int TD_DM_DRVN (int) ;
 int TD_DM_DRVP (int) ;
 int mt7623_trgmii_clear (struct mt7530_priv*,int ,int) ;
 int mt7623_trgmii_set (struct mt7530_priv*,int ,int) ;
 int mt7623_trgmii_write (struct mt7530_priv*,int ,int) ;

__attribute__((used)) static int
mt7623_pad_clk_setup(struct dsa_switch *ds)
{
 struct mt7530_priv *priv = ds->priv;
 int i;

 for (i = 0 ; i < NUM_TRGMII_CTRL; i++)
  mt7623_trgmii_write(priv, GSW_TRGMII_TD_ODT(i),
        TD_DM_DRVP(8) | TD_DM_DRVN(8));

 mt7623_trgmii_set(priv, GSW_TRGMII_RCK_CTRL, RX_RST | RXC_DQSISEL);
 mt7623_trgmii_clear(priv, GSW_TRGMII_RCK_CTRL, RX_RST);

 return 0;
}
