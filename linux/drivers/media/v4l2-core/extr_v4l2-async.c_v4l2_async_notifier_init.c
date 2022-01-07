
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int asd_list; } ;


 int INIT_LIST_HEAD (int *) ;

void v4l2_async_notifier_init(struct v4l2_async_notifier *notifier)
{
 INIT_LIST_HEAD(&notifier->asd_list);
}
