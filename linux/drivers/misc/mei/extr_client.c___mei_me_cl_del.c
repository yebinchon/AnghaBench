
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int list; } ;
struct mei_device {int dummy; } ;


 int list_del_init (int *) ;
 int mei_me_cl_put (struct mei_me_client*) ;

__attribute__((used)) static void __mei_me_cl_del(struct mei_device *dev, struct mei_me_client *me_cl)
{
 if (!me_cl)
  return;

 list_del_init(&me_cl->list);
 mei_me_cl_put(me_cl);
}
