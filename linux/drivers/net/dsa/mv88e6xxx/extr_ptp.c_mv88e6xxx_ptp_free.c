
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mv88e6xxx_chip {int * ptp_clock; int tai_event_work; TYPE_3__* info; int overflow_work; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* ptp_ops; } ;
struct TYPE_4__ {scalar_t__ event_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int ptp_clock_unregister (int *) ;

void mv88e6xxx_ptp_free(struct mv88e6xxx_chip *chip)
{
 if (chip->ptp_clock) {
  cancel_delayed_work_sync(&chip->overflow_work);
  if (chip->info->ops->ptp_ops->event_work)
   cancel_delayed_work_sync(&chip->tai_event_work);

  ptp_clock_unregister(chip->ptp_clock);
  chip->ptp_clock = ((void*)0);
 }
}
