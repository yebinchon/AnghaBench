
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int smem_pg0; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int PSS_SMEM_PGNUM (int ,int ) ;

__attribute__((used)) static u32
bfa_ioc_smem_pgnum(struct bfa_ioc *ioc, u32 fmaddr)
{
 return PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, fmaddr);
}
