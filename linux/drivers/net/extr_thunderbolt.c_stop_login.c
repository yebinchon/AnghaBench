
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbnet {int connected_work; int login_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void stop_login(struct tbnet *net)
{
 cancel_delayed_work_sync(&net->login_work);
 cancel_work_sync(&net->connected_work);
}
