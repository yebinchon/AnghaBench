
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct mt7530_priv {int reg_mutex; TYPE_1__* ports; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
struct TYPE_2__ {int enable; int pm; } ;


 int BIT (int ) ;
 int MT7530_CPU_PORT ;
 int MT7530_PCR_P (int) ;
 int PCR_MATRIX (int ) ;
 int PCR_MATRIX_MASK ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 int mt7530_port_set_status (struct mt7530_priv*,int,int ) ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7530_port_enable(struct dsa_switch *ds, int port,
     struct phy_device *phy)
{
 struct mt7530_priv *priv = ds->priv;

 if (!dsa_is_user_port(ds, port))
  return 0;

 mutex_lock(&priv->reg_mutex);





 priv->ports[port].pm |= PCR_MATRIX(BIT(MT7530_CPU_PORT));
 priv->ports[port].enable = 1;
 mt7530_rmw(priv, MT7530_PCR_P(port), PCR_MATRIX_MASK,
     priv->ports[port].pm);
 mt7530_port_set_status(priv, port, 0);

 mutex_unlock(&priv->reg_mutex);

 return 0;
}
