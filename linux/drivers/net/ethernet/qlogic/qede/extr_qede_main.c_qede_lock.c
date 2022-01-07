
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;


 int __qede_lock (struct qede_dev*) ;
 int rtnl_lock () ;

__attribute__((used)) static void qede_lock(struct qede_dev *edev)
{
 rtnl_lock();
 __qede_lock(edev);
}
