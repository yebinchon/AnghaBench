
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;


 int __qede_unlock (struct qede_dev*) ;
 int rtnl_unlock () ;

__attribute__((used)) static void qede_unlock(struct qede_dev *edev)
{
 __qede_unlock(edev);
 rtnl_unlock();
}
