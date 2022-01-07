
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fixed_address; } ;
struct mei_me_client {scalar_t__ connect_count; TYPE_1__ props; } ;
struct mei_cl {struct mei_me_client* me_cl; int state; } ;


 int EBUSY ;
 int ENOENT ;
 int MEI_FILE_CONNECTING ;
 int mei_me_cl_get (struct mei_me_client*) ;
 int mei_me_cl_put (struct mei_me_client*) ;

__attribute__((used)) static int mei_cl_set_connecting(struct mei_cl *cl, struct mei_me_client *me_cl)
{
 if (!mei_me_cl_get(me_cl))
  return -ENOENT;


 if (me_cl->props.fixed_address) {
  if (me_cl->connect_count) {
   mei_me_cl_put(me_cl);
   return -EBUSY;
  }
 }

 cl->me_cl = me_cl;
 cl->state = MEI_FILE_CONNECTING;
 cl->me_cl->connect_count++;

 return 0;
}
