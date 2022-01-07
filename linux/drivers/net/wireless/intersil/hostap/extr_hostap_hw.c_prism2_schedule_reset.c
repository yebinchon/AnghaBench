
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reset_queue; } ;
typedef TYPE_1__ local_info_t ;


 int schedule_work (int *) ;

__attribute__((used)) static void prism2_schedule_reset(local_info_t *local)
{
 schedule_work(&local->reset_queue);
}
