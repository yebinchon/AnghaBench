
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ virt; } ;
struct vr_nor_mtd {scalar_t__ csr_base; TYPE_1__ map; } ;


 scalar_t__ EXP_TIMING_CS0 ;
 unsigned int TIMING_WR_EN ;
 int iounmap (scalar_t__) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void vr_nor_destroy_maps(struct vr_nor_mtd *p)
{
 unsigned int exp_timing_cs0;


 exp_timing_cs0 = readl(p->csr_base + EXP_TIMING_CS0);
 exp_timing_cs0 &= ~TIMING_WR_EN;
 writel(exp_timing_cs0, p->csr_base + EXP_TIMING_CS0);


 iounmap(p->map.virt);


 iounmap(p->csr_base);
}
