
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_local {scalar_t__ base_addr; } ;


 int XEL_GIER_GIE_MASK ;
 scalar_t__ XEL_GIER_OFFSET ;
 scalar_t__ XEL_RSR_OFFSET ;
 int XEL_RSR_RECV_IE_MASK ;
 scalar_t__ XEL_TSR_OFFSET ;
 int XEL_TSR_XMIT_IE_MASK ;
 int xemaclite_readl (scalar_t__) ;
 int xemaclite_writel (int,scalar_t__) ;

__attribute__((used)) static void xemaclite_enable_interrupts(struct net_local *drvdata)
{
 u32 reg_data;


 reg_data = xemaclite_readl(drvdata->base_addr + XEL_TSR_OFFSET);
 xemaclite_writel(reg_data | XEL_TSR_XMIT_IE_MASK,
    drvdata->base_addr + XEL_TSR_OFFSET);


 xemaclite_writel(XEL_RSR_RECV_IE_MASK, drvdata->base_addr + XEL_RSR_OFFSET);


 xemaclite_writel(XEL_GIER_GIE_MASK, drvdata->base_addr + XEL_GIER_OFFSET);
}
