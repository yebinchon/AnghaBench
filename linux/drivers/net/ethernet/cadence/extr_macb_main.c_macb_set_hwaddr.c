
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct macb {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_addr; } ;


 int SA1B ;
 int SA1T ;
 int SA2B ;
 int SA2T ;
 int SA3B ;
 int SA3T ;
 int SA4B ;
 int SA4T ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int macb_or_gem_writel (struct macb*,int ,int ) ;

__attribute__((used)) static void macb_set_hwaddr(struct macb *bp)
{
 u32 bottom;
 u16 top;

 bottom = cpu_to_le32(*((u32 *)bp->dev->dev_addr));
 macb_or_gem_writel(bp, SA1B, bottom);
 top = cpu_to_le16(*((u16 *)(bp->dev->dev_addr + 4)));
 macb_or_gem_writel(bp, SA1T, top);


 macb_or_gem_writel(bp, SA2B, 0);
 macb_or_gem_writel(bp, SA2T, 0);
 macb_or_gem_writel(bp, SA3B, 0);
 macb_or_gem_writel(bp, SA3T, 0);
 macb_or_gem_writel(bp, SA4B, 0);
 macb_or_gem_writel(bp, SA4T, 0);
}
