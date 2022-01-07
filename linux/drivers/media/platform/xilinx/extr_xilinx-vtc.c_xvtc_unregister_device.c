
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvtc_device {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xvtc_lock ;

__attribute__((used)) static void xvtc_unregister_device(struct xvtc_device *xvtc)
{
 mutex_lock(&xvtc_lock);
 list_del(&xvtc->list);
 mutex_unlock(&xvtc_lock);
}
