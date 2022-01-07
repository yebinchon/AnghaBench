
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_port {TYPE_2__* priv; TYPE_1__** rxqs; } ;
struct TYPE_5__ {scalar_t__ hw_version; } ;
struct TYPE_4__ {int id; } ;


 scalar_t__ MVPP21 ;
 int MVPP21_RXQ_POOL_LONG_MASK ;
 int MVPP22_RXQ_POOL_LONG_MASK ;
 int MVPP2_RXQ_CONFIG_REG (int) ;
 int MVPP2_RXQ_POOL_LONG_OFFS ;
 int mvpp2_read (TYPE_2__*,int ) ;
 int mvpp2_write (TYPE_2__*,int ,int) ;

__attribute__((used)) static void mvpp2_rxq_long_pool_set(struct mvpp2_port *port,
        int lrxq, int long_pool)
{
 u32 val, mask;
 int prxq;


 prxq = port->rxqs[lrxq]->id;

 if (port->priv->hw_version == MVPP21)
  mask = MVPP21_RXQ_POOL_LONG_MASK;
 else
  mask = MVPP22_RXQ_POOL_LONG_MASK;

 val = mvpp2_read(port->priv, MVPP2_RXQ_CONFIG_REG(prxq));
 val &= ~mask;
 val |= (long_pool << MVPP2_RXQ_POOL_LONG_OFFS) & mask;
 mvpp2_write(port->priv, MVPP2_RXQ_CONFIG_REG(prxq), val);
}
