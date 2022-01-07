
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* in_nway ) (struct r8152*) ;} ;
struct TYPE_3__ {int work; } ;
struct r8152 {int tx_queue; TYPE_2__ rtl_ops; TYPE_1__ schedule; int netdev; } ;


 int LINK_STATUS ;
 int netif_carrier_ok (int ) ;
 int rtl8152_get_speed (struct r8152*) ;
 int skb_queue_empty (int *) ;
 scalar_t__ stub1 (struct r8152*) ;
 scalar_t__ work_busy (int *) ;

__attribute__((used)) static bool delay_autosuspend(struct r8152 *tp)
{
 bool sw_linking = !!netif_carrier_ok(tp->netdev);
 bool hw_linking = !!(rtl8152_get_speed(tp) & LINK_STATUS);





 if (work_busy(&tp->schedule.work) || sw_linking != hw_linking)
  return 1;




 if (!sw_linking && tp->rtl_ops.in_nway(tp))
  return 1;
 else if (!skb_queue_empty(&tp->tx_queue))
  return 1;
 else
  return 0;
}
