
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qca8k_priv {int dummy; } ;
struct dsa_switch {struct qca8k_priv* priv; } ;


 int qca8k_mdio_write (struct qca8k_priv*,int,int,int ) ;

__attribute__((used)) static int
qca8k_phy_write(struct dsa_switch *ds, int port, int regnum, u16 data)
{
 struct qca8k_priv *priv = ds->priv;

 return qca8k_mdio_write(priv, port, regnum, data);
}
