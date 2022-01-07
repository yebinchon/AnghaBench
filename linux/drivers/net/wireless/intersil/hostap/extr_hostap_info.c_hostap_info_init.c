
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info_queue; int info_list; } ;
typedef TYPE_1__ local_info_t ;


 int INIT_WORK (int *,int ) ;
 int handle_info_queue ;
 int skb_queue_head_init (int *) ;

void hostap_info_init(local_info_t *local)
{
 skb_queue_head_init(&local->info_list);

 INIT_WORK(&local->info_queue, handle_info_queue);

}
