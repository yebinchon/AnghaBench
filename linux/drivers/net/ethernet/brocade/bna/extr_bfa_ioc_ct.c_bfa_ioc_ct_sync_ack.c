
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc_fail_sync; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int bfa_ioc_ct_sync_pos (struct bfa_ioc*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_sync_ack(struct bfa_ioc *ioc)
{
 u32 r32 = readl(ioc->ioc_regs.ioc_fail_sync);

 writel(r32 | bfa_ioc_ct_sync_pos(ioc), ioc->ioc_regs.ioc_fail_sync);
}
