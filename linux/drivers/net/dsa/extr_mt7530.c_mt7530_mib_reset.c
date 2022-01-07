
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int CCR_MIB_ACTIVATE ;
 int CCR_MIB_FLUSH ;
 int MT7530_MIB_CCR ;
 int mt7530_write (struct mt7530_priv*,int ,int ) ;

__attribute__((used)) static void
mt7530_mib_reset(struct dsa_switch *ds)
{
 struct mt7530_priv *priv = ds->priv;

 mt7530_write(priv, MT7530_MIB_CCR, CCR_MIB_FLUSH);
 mt7530_write(priv, MT7530_MIB_CCR, CCR_MIB_ACTIVATE);
}
