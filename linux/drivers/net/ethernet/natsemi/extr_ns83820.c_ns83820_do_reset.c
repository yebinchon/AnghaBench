
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ns83820 {scalar_t__ base; } ;


 scalar_t__ CR ;
 int Dprintk (char*) ;
 int readl (scalar_t__) ;
 int schedule () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ns83820_do_reset(struct ns83820 *dev, u32 which)
{
 Dprintk("resetting chip...\n");
 writel(which, dev->base + CR);
 do {
  schedule();
 } while (readl(dev->base + CR) & which);
 Dprintk("okay!\n");
}
