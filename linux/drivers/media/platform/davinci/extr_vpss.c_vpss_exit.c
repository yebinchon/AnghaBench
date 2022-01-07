
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vpss_regs_base2; } ;


 int VPSS_CLK_CTRL ;
 int iounmap (int ) ;
 TYPE_1__ oper_cfg ;
 int platform_driver_unregister (int *) ;
 int release_mem_region (int ,int) ;
 int vpss_driver ;

__attribute__((used)) static void vpss_exit(void)
{
 platform_driver_unregister(&vpss_driver);
 iounmap(oper_cfg.vpss_regs_base2);
 release_mem_region(VPSS_CLK_CTRL, 4);
}
