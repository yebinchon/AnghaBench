
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sge {TYPE_3__* adapter; } ;
struct TYPE_6__ {scalar_t__ regs; TYPE_2__* port; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int hw_features; } ;


 scalar_t__ A_PL_ENABLE ;
 scalar_t__ A_SG_INT_ENABLE ;
 int F_PACKET_TOO_BIG ;
 int NETIF_F_TSO ;
 int SGE_INT_ENABLE ;
 int SGE_PL_INTR_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void t1_sge_intr_enable(struct sge *sge)
{
 u32 en = SGE_INT_ENABLE;
 u32 val = readl(sge->adapter->regs + A_PL_ENABLE);

 if (sge->adapter->port[0].dev->hw_features & NETIF_F_TSO)
  en &= ~F_PACKET_TOO_BIG;
 writel(en, sge->adapter->regs + A_SG_INT_ENABLE);
 writel(val | SGE_PL_INTR_MASK, sge->adapter->regs + A_PL_ENABLE);
}
