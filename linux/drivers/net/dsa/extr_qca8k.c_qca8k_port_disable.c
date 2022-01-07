
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qca8k_priv {TYPE_1__* port_sts; } ;
struct dsa_switch {scalar_t__ priv; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 int qca8k_port_set_status (struct qca8k_priv*,int,int ) ;

__attribute__((used)) static void
qca8k_port_disable(struct dsa_switch *ds, int port)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;

 qca8k_port_set_status(priv, port, 0);
 priv->port_sts[port].enabled = 0;
}
