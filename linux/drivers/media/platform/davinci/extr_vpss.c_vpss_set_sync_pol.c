
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpss_sync_pol {int dummy; } ;
struct TYPE_3__ {int (* set_sync_pol ) (struct vpss_sync_pol) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 TYPE_2__ oper_cfg ;
 int stub1 (struct vpss_sync_pol) ;

void vpss_set_sync_pol(struct vpss_sync_pol sync)
{
 if (!oper_cfg.hw_ops.set_sync_pol)
  return;

 oper_cfg.hw_ops.set_sync_pol(sync);
}
