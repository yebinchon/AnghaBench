
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int dummy; } ;
struct mei_device {int me_clients_rwsem; } ;


 int __mei_me_cl_del (struct mei_device*,struct mei_me_client*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void mei_me_cl_del(struct mei_device *dev, struct mei_me_client *me_cl)
{
 down_write(&dev->me_clients_rwsem);
 __mei_me_cl_del(dev, me_cl);
 up_write(&dev->me_clients_rwsem);
}
