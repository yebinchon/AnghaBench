
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_target {int rx_lock; TYPE_1__* endpoint; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
struct TYPE_2__ {int rx_bufq; } ;


 int get_queue_depth (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath6kl_htc_mbox_get_rxbuf_num(struct htc_target *target,
        enum htc_endpoint_id endpoint)
{
 int num;

 spin_lock_bh(&target->rx_lock);
 num = get_queue_depth(&(target->endpoint[endpoint].rx_bufq));
 spin_unlock_bh(&target->rx_lock);
 return num;
}
