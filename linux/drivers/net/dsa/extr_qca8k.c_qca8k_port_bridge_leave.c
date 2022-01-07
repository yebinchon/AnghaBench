
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qca8k_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {scalar_t__ priv; } ;
struct TYPE_2__ {struct net_device* bridge_dev; } ;


 int BIT (int) ;
 int QCA8K_CPU_PORT ;
 int QCA8K_NUM_PORTS ;
 int QCA8K_PORT_LOOKUP_CTRL (int) ;
 int QCA8K_PORT_LOOKUP_MEMBER ;
 TYPE_1__* dsa_to_port (struct dsa_switch*,int) ;
 int qca8k_reg_clear (struct qca8k_priv*,int ,int ) ;
 int qca8k_rmw (struct qca8k_priv*,int ,int ,int ) ;

__attribute__((used)) static void
qca8k_port_bridge_leave(struct dsa_switch *ds, int port, struct net_device *br)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
 int i;

 for (i = 1; i < QCA8K_NUM_PORTS; i++) {
  if (dsa_to_port(ds, i)->bridge_dev != br)
   continue;



  qca8k_reg_clear(priv,
    QCA8K_PORT_LOOKUP_CTRL(i),
    BIT(port));
 }




 qca8k_rmw(priv, QCA8K_PORT_LOOKUP_CTRL(port),
    QCA8K_PORT_LOOKUP_MEMBER, BIT(QCA8K_CPU_PORT));
}
