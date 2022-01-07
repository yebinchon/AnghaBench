
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int reg_mutex; } ;
struct ethtool_eee {scalar_t__ eee_enabled; } ;
struct dsa_switch {scalar_t__ priv; } ;


 int QCA8K_REG_EEE_CTRL ;
 int QCA8K_REG_EEE_CTRL_LPI_EN (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qca8k_read (struct qca8k_priv*,int ) ;
 int qca8k_write (struct qca8k_priv*,int ,int ) ;

__attribute__((used)) static int
qca8k_set_mac_eee(struct dsa_switch *ds, int port, struct ethtool_eee *eee)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
 u32 lpi_en = QCA8K_REG_EEE_CTRL_LPI_EN(port);
 u32 reg;

 mutex_lock(&priv->reg_mutex);
 reg = qca8k_read(priv, QCA8K_REG_EEE_CTRL);
 if (eee->eee_enabled)
  reg |= lpi_en;
 else
  reg &= ~lpi_en;
 qca8k_write(priv, QCA8K_REG_EEE_CTRL, reg);
 mutex_unlock(&priv->reg_mutex);

 return 0;
}
