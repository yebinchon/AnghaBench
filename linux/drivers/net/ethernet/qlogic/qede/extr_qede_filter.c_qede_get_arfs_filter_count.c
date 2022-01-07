
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {TYPE_1__* arfs; } ;
struct TYPE_2__ {int filter_count; } ;


 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;

int qede_get_arfs_filter_count(struct qede_dev *edev)
{
 int count = 0;

 __qede_lock(edev);

 if (!edev->arfs)
  goto unlock;

 count = edev->arfs->filter_count;

unlock:
 __qede_unlock(edev);
 return count;
}
