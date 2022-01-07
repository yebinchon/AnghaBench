
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int list; } ;
struct mei_device {int me_clients_rwsem; int me_clients; } ;


 int down_write (int *) ;
 int list_add (int *,int *) ;
 int up_write (int *) ;

void mei_me_cl_add(struct mei_device *dev, struct mei_me_client *me_cl)
{
 down_write(&dev->me_clients_rwsem);
 list_add(&me_cl->list, &dev->me_clients);
 up_write(&dev->me_clients_rwsem);
}
