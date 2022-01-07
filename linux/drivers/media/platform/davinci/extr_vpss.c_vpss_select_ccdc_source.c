
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vpss_ccdc_source_sel { ____Placeholder_vpss_ccdc_source_sel } vpss_ccdc_source_sel ;
struct TYPE_3__ {int (* select_ccdc_source ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 int EINVAL ;
 TYPE_2__ oper_cfg ;
 int stub1 (int) ;

int vpss_select_ccdc_source(enum vpss_ccdc_source_sel src_sel)
{
 if (!oper_cfg.hw_ops.select_ccdc_source)
  return -EINVAL;

 oper_cfg.hw_ops.select_ccdc_source(src_sel);
 return 0;
}
