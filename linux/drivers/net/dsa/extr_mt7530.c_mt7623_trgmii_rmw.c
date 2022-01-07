
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dummy; } ;


 int mt7623_trgmii_read (struct mt7530_priv*,int ) ;
 int mt7623_trgmii_write (struct mt7530_priv*,int ,int ) ;

__attribute__((used)) static void
mt7623_trgmii_rmw(struct mt7530_priv *priv, u32 reg,
    u32 mask, u32 set)
{
 u32 val;

 val = mt7623_trgmii_read(priv, reg);
 val &= ~mask;
 val |= set;
 mt7623_trgmii_write(priv, reg, val);
}
