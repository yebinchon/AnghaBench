
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int qede_lock; } ;


 int mutex_lock (int *) ;

void __qede_lock(struct qede_dev *edev)
{
 mutex_lock(&edev->qede_lock);
}
