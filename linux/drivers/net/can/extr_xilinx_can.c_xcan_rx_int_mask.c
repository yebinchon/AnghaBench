
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct xcan_priv {TYPE_1__ devtype; } ;


 int XCAN_FLAG_RX_FIFO_MULTI ;
 int XCAN_IXR_RXNEMP_MASK ;
 int XCAN_IXR_RXOK_MASK ;

__attribute__((used)) static u32 xcan_rx_int_mask(const struct xcan_priv *priv)
{



 if (priv->devtype.flags & XCAN_FLAG_RX_FIFO_MULTI)
  return XCAN_IXR_RXOK_MASK;
 else
  return XCAN_IXR_RXNEMP_MASK;
}
