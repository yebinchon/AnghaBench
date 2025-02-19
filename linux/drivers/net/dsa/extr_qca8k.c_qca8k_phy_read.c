
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca8k_priv {int dummy; } ;
struct dsa_switch {struct qca8k_priv* priv; } ;


 int qca8k_mdio_read (struct qca8k_priv*,int,int) ;

__attribute__((used)) static int
qca8k_phy_read(struct dsa_switch *ds, int port, int regnum)
{
 struct qca8k_priv *priv = ds->priv;
 int ret;

 ret = qca8k_mdio_read(priv, port, regnum);

 if (ret < 0)
  return 0xffff;

 return ret;
}
