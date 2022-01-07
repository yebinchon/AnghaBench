
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htc_target {TYPE_3__* dev; } ;
struct htc_packet {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ar; } ;
struct TYPE_5__ {TYPE_1__* htc_ops; } ;
struct TYPE_4__ {int (* tx ) (struct htc_target*,struct htc_packet*) ;} ;


 int stub1 (struct htc_target*,struct htc_packet*) ;

__attribute__((used)) static inline int ath6kl_htc_tx(struct htc_target *target,
    struct htc_packet *packet)
{
 return target->dev->ar->htc_ops->tx(target, packet);
}
