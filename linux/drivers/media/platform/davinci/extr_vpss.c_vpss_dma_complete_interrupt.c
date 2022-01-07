
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* dma_complete_interrupt ) () ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 TYPE_2__ oper_cfg ;
 int stub1 () ;

int vpss_dma_complete_interrupt(void)
{
 if (!oper_cfg.hw_ops.dma_complete_interrupt)
  return 2;
 return oper_cfg.hw_ops.dma_complete_interrupt();
}
