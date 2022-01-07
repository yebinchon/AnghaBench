
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct mei_me_client {int dummy; } ;
struct mei_device {int me_clients_rwsem; } ;


 struct mei_me_client* __mei_me_cl_by_uuid (struct mei_device*,int const*) ;
 int down_read (int *) ;
 int up_read (int *) ;

struct mei_me_client *mei_me_cl_by_uuid(struct mei_device *dev,
     const uuid_le *uuid)
{
 struct mei_me_client *me_cl;

 down_read(&dev->me_clients_rwsem);
 me_cl = __mei_me_cl_by_uuid(dev, uuid);
 up_read(&dev->me_clients_rwsem);

 return me_cl;
}
