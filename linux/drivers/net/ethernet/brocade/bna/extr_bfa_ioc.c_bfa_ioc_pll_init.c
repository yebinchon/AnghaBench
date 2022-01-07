
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_init_sem_reg; } ;
struct bfa_ioc {int pllinit; TYPE_1__ ioc_regs; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int BFA_STATUS_OK ;
 int bfa_ioc_lmem_init (struct bfa_ioc*) ;
 int bfa_ioc_pll_init_asic (struct bfa_ioc*) ;
 int bfa_nw_ioc_sem_get (int ) ;
 int bfa_nw_ioc_sem_release (int ) ;

__attribute__((used)) static enum bfa_status
bfa_ioc_pll_init(struct bfa_ioc *ioc)
{



 bfa_nw_ioc_sem_get(ioc->ioc_regs.ioc_init_sem_reg);

 bfa_ioc_pll_init_asic(ioc);

 ioc->pllinit = 1;


 bfa_ioc_lmem_init(ioc);




 bfa_nw_ioc_sem_release(ioc->ioc_regs.ioc_init_sem_reg);

 return BFA_STATUS_OK;
}
