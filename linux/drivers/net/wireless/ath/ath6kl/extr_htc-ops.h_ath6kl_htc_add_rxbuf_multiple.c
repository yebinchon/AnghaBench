
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct htc_target {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* ar; } ;
struct TYPE_5__ {TYPE_1__* htc_ops; } ;
struct TYPE_4__ {int (* add_rxbuf_multiple ) (struct htc_target*,struct list_head*) ;} ;


 int stub1 (struct htc_target*,struct list_head*) ;

__attribute__((used)) static inline int ath6kl_htc_add_rxbuf_multiple(struct htc_target *target,
      struct list_head *pktq)
{
 return target->dev->ar->htc_ops->add_rxbuf_multiple(target, pktq);
}
