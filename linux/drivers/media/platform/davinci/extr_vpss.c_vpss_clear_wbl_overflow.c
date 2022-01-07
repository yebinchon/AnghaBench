
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vpss_wbl_sel { ____Placeholder_vpss_wbl_sel } vpss_wbl_sel ;
struct TYPE_3__ {int (* clear_wbl_overflow ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 int EINVAL ;
 TYPE_2__ oper_cfg ;
 int stub1 (int) ;

int vpss_clear_wbl_overflow(enum vpss_wbl_sel wbl_sel)
{
 if (!oper_cfg.hw_ops.clear_wbl_overflow)
  return -EINVAL;

 return oper_cfg.hw_ops.clear_wbl_overflow(wbl_sel);
}
