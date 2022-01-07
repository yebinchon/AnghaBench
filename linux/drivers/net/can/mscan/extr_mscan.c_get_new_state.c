
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mscan_priv {TYPE_1__ can; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int MSCAN_CSCIF ;
 int MSCAN_STATE_RX (int) ;
 int MSCAN_STATE_TX (int) ;
 size_t max (int ,int ) ;
 struct mscan_priv* netdev_priv (struct net_device*) ;
 int* state_map ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static enum can_state get_new_state(struct net_device *dev, u8 canrflg)
{
 struct mscan_priv *priv = netdev_priv(dev);

 if (unlikely(canrflg & MSCAN_CSCIF))
  return state_map[max(MSCAN_STATE_RX(canrflg),
     MSCAN_STATE_TX(canrflg))];

 return priv->can.state;
}
