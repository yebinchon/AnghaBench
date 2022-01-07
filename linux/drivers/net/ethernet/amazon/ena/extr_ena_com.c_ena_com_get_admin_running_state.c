
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running_state; } ;
struct ena_com_dev {TYPE_1__ admin_queue; } ;



bool ena_com_get_admin_running_state(struct ena_com_dev *ena_dev)
{
 return ena_dev->admin_queue.running_state;
}
