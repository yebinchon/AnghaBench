
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc; } ;
struct bna {TYPE_1__ ioceth; } ;


 scalar_t__ BNA_IS_HALT_INTR (struct bna*,int ) ;
 int bfa_nw_ioc_error_isr (int *) ;
 int bna_halt_clear (struct bna*) ;

__attribute__((used)) static void
bna_err_handler(struct bna *bna, u32 intr_status)
{
 if (BNA_IS_HALT_INTR(bna, intr_status))
  bna_halt_clear(bna);

 bfa_nw_ioc_error_isr(&bna->ioceth.ioc);
}
