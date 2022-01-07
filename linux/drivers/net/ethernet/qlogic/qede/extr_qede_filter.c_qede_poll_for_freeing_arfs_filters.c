
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {TYPE_1__* arfs; } ;
struct TYPE_2__ {int filter_count; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int QEDE_ARFS_POLL_COUNT ;
 int msleep (int) ;
 int qede_process_arfs_filters (struct qede_dev*,int) ;

void qede_poll_for_freeing_arfs_filters(struct qede_dev *edev)
{
 int count = QEDE_ARFS_POLL_COUNT;

 while (count) {
  qede_process_arfs_filters(edev, 0);

  if (!edev->arfs->filter_count)
   break;

  msleep(100);
  count--;
 }

 if (!count) {
  DP_NOTICE(edev, "Timeout in polling for arfs filter free\n");


  qede_process_arfs_filters(edev, 1);
 }
}
