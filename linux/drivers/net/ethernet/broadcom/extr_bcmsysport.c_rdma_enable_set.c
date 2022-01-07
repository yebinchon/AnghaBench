
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {int netdev; } ;


 int ETIMEDOUT ;
 int RDMA_CONTROL ;
 int RDMA_DISABLED ;
 int RDMA_EN ;
 int RDMA_STATUS ;
 int netdev_err (int ,char*) ;
 int rdma_readl (struct bcm_sysport_priv*,int ) ;
 int rdma_writel (struct bcm_sysport_priv*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int rdma_enable_set(struct bcm_sysport_priv *priv,
      unsigned int enable)
{
 unsigned int timeout = 1000;
 u32 reg;

 reg = rdma_readl(priv, RDMA_CONTROL);
 if (enable)
  reg |= RDMA_EN;
 else
  reg &= ~RDMA_EN;
 rdma_writel(priv, reg, RDMA_CONTROL);


 do {
  reg = rdma_readl(priv, RDMA_STATUS);
  if (!!(reg & RDMA_DISABLED) == !enable)
   return 0;
  usleep_range(1000, 2000);
 } while (timeout-- > 0);

 netdev_err(priv->netdev, "timeout waiting for RDMA to finish\n");

 return -ETIMEDOUT;
}
