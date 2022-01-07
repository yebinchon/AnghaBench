
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vpss_clock_sel { ____Placeholder_vpss_clock_sel } vpss_clock_sel ;
struct TYPE_3__ {int (* enable_clock ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 int EINVAL ;
 TYPE_2__ oper_cfg ;
 int stub1 (int,int) ;

int vpss_enable_clock(enum vpss_clock_sel clock_sel, int en)
{
 if (!oper_cfg.hw_ops.enable_clock)
  return -EINVAL;

 return oper_cfg.hw_ops.enable_clock(clock_sel, en);
}
