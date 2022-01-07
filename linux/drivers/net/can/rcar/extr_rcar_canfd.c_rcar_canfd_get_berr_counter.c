
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_canfd_channel {int base; int channel; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {int rxerr; int txerr; } ;


 int RCANFD_CSTS (int ) ;
 int RCANFD_CSTS_RECCNT (int ) ;
 int RCANFD_CSTS_TECCNT (int ) ;
 struct rcar_canfd_channel* netdev_priv (struct net_device const*) ;
 int rcar_canfd_read (int ,int ) ;

__attribute__((used)) static int rcar_canfd_get_berr_counter(const struct net_device *dev,
           struct can_berr_counter *bec)
{
 struct rcar_canfd_channel *priv = netdev_priv(dev);
 u32 val, ch = priv->channel;


 val = rcar_canfd_read(priv->base, RCANFD_CSTS(ch));
 bec->txerr = RCANFD_CSTS_TECCNT(val);
 bec->rxerr = RCANFD_CSTS_RECCNT(val);
 return 0;
}
