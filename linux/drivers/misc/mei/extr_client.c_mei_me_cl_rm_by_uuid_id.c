
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
typedef int u8 ;
struct mei_me_client {int dummy; } ;
struct mei_device {int me_clients_rwsem; int dev; } ;


 struct mei_me_client* __mei_me_cl_by_uuid_id (struct mei_device*,int const*,int ) ;
 int __mei_me_cl_del (struct mei_device*,struct mei_me_client*) ;
 int dev_dbg (int ,char*,int const*,int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

void mei_me_cl_rm_by_uuid_id(struct mei_device *dev, const uuid_le *uuid, u8 id)
{
 struct mei_me_client *me_cl;

 dev_dbg(dev->dev, "remove %pUl %d\n", uuid, id);

 down_write(&dev->me_clients_rwsem);
 me_cl = __mei_me_cl_by_uuid_id(dev, uuid, id);
 __mei_me_cl_del(dev, me_cl);
 up_write(&dev->me_clients_rwsem);
}
