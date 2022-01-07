
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dummy; } ;


 int core_rmw (struct mt7530_priv*,int ,int ,int ) ;

__attribute__((used)) static void
core_set(struct mt7530_priv *priv, u32 reg, u32 val)
{
 core_rmw(priv, reg, 0, val);
}
