
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mt7530_priv {int reg_mutex; TYPE_1__* ports; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
struct TYPE_4__ {struct net_device* bridge_dev; } ;
struct TYPE_3__ {int pm; scalar_t__ enable; } ;


 int BIT (int) ;
 int MT7530_CPU_PORT ;
 int MT7530_NUM_PORTS ;
 int MT7530_PCR_P (int) ;
 int PCR_MATRIX (int ) ;
 int PCR_MATRIX_MASK ;
 scalar_t__ dsa_is_user_port (struct dsa_switch*,int) ;
 TYPE_2__* dsa_to_port (struct dsa_switch*,int) ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;
 int mt7530_set (struct mt7530_priv*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7530_port_bridge_join(struct dsa_switch *ds, int port,
   struct net_device *bridge)
{
 struct mt7530_priv *priv = ds->priv;
 u32 port_bitmap = BIT(MT7530_CPU_PORT);
 int i;

 mutex_lock(&priv->reg_mutex);

 for (i = 0; i < MT7530_NUM_PORTS; i++) {




  if (dsa_is_user_port(ds, i) && i != port) {
   if (dsa_to_port(ds, i)->bridge_dev != bridge)
    continue;
   if (priv->ports[i].enable)
    mt7530_set(priv, MT7530_PCR_P(i),
        PCR_MATRIX(BIT(port)));
   priv->ports[i].pm |= PCR_MATRIX(BIT(port));

   port_bitmap |= BIT(i);
  }
 }


 if (priv->ports[port].enable)
  mt7530_rmw(priv, MT7530_PCR_P(port),
      PCR_MATRIX_MASK, PCR_MATRIX(port_bitmap));
 priv->ports[port].pm |= PCR_MATRIX(port_bitmap);

 mutex_unlock(&priv->reg_mutex);

 return 0;
}
