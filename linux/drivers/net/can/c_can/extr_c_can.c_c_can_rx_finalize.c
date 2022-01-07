
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct c_can_priv {scalar_t__ type; } ;


 scalar_t__ BOSCH_D_CAN ;
 int IF_COMM_CLR_NEWDAT ;
 int IF_RX ;
 int c_can_object_get (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static inline void c_can_rx_finalize(struct net_device *dev,
         struct c_can_priv *priv, u32 obj)
{
 if (priv->type != BOSCH_D_CAN)
  c_can_object_get(dev, IF_RX, obj, IF_COMM_CLR_NEWDAT);
}
