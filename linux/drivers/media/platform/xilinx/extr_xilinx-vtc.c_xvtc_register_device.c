
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvtc_device {int list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xvtc_list ;
 int xvtc_lock ;

__attribute__((used)) static void xvtc_register_device(struct xvtc_device *xvtc)
{
 mutex_lock(&xvtc_lock);
 list_add_tail(&xvtc->list, &xvtc_list);
 mutex_unlock(&xvtc_lock);
}
