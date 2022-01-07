
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int host_roaming; scalar_t__ iw_mode; int preferred_ap; } ;
typedef TYPE_1__ local_info_t ;


 scalar_t__ IW_MODE_INFRA ;
 int is_zero_ether_addr (int ) ;
 int prism2_host_roaming (TYPE_1__*) ;

__attribute__((used)) static void handle_info_queue_scanresults(local_info_t *local)
{
 if (local->host_roaming == 1 && local->iw_mode == IW_MODE_INFRA)
  prism2_host_roaming(local);

 if (local->host_roaming == 2 && local->iw_mode == IW_MODE_INFRA &&
     !is_zero_ether_addr(local->preferred_ap)) {







  prism2_host_roaming(local);
 }
}
