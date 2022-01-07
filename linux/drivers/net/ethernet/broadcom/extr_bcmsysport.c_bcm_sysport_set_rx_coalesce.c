
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int RDMA_INTR_THRESH_MASK ;
 int RDMA_MBDONE_INTR ;
 int RDMA_TIMEOUT_MASK ;
 int RDMA_TIMEOUT_SHIFT ;
 int rdma_readl (struct bcm_sysport_priv*,int ) ;
 int rdma_writel (struct bcm_sysport_priv*,int,int ) ;

__attribute__((used)) static void bcm_sysport_set_rx_coalesce(struct bcm_sysport_priv *priv,
     u32 usecs, u32 pkts)
{
 u32 reg;

 reg = rdma_readl(priv, RDMA_MBDONE_INTR);
 reg &= ~(RDMA_INTR_THRESH_MASK |
   RDMA_TIMEOUT_MASK << RDMA_TIMEOUT_SHIFT);
 reg |= pkts;
 reg |= DIV_ROUND_UP(usecs * 1000, 8192) << RDMA_TIMEOUT_SHIFT;
 rdma_writel(priv, reg, RDMA_MBDONE_INTR);
}
