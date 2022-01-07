
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auto_polling; } ;
struct ena_com_dev {TYPE_1__ admin_queue; } ;



void ena_com_set_admin_auto_polling_mode(struct ena_com_dev *ena_dev,
      bool polling)
{
 ena_dev->admin_queue.auto_polling = polling;
}
