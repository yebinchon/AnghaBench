
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MVPP2_CAUSE_FCS_ERR_MASK ;
 int MVPP2_CAUSE_RX_FIFO_OVERRUN_MASK ;
 int MVPP2_CAUSE_TX_FIFO_UNDERRUN_MASK ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static inline void mvpp2_cause_error(struct net_device *dev, int cause)
{
 if (cause & MVPP2_CAUSE_FCS_ERR_MASK)
  netdev_err(dev, "FCS error\n");
 if (cause & MVPP2_CAUSE_RX_FIFO_OVERRUN_MASK)
  netdev_err(dev, "rx fifo overrun error\n");
 if (cause & MVPP2_CAUSE_TX_FIFO_UNDERRUN_MASK)
  netdev_err(dev, "tx fifo underrun error\n");
}
