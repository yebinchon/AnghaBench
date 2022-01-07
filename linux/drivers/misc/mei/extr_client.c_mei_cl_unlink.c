
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ open_handle_count; int host_clients_map; } ;
struct mei_cl {int link; int rd_pending; int rd_completed; int writing_state; int state; scalar_t__ host_client_id; struct mei_device* dev; } ;


 int MEI_FILE_UNINITIALIZED ;
 int MEI_IDLE ;
 scalar_t__ WARN_ON (int) ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int clear_bit (scalar_t__,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

int mei_cl_unlink(struct mei_cl *cl)
{
 struct mei_device *dev;


 if (!cl)
  return 0;

 if (WARN_ON(!cl->dev))
  return 0;

 dev = cl->dev;

 cl_dbg(dev, cl, "unlink client");

 if (dev->open_handle_count > 0)
  dev->open_handle_count--;


 if (cl->host_client_id)
  clear_bit(cl->host_client_id, dev->host_clients_map);

 list_del_init(&cl->link);

 cl->state = MEI_FILE_UNINITIALIZED;
 cl->writing_state = MEI_IDLE;

 WARN_ON(!list_empty(&cl->rd_completed) ||
  !list_empty(&cl->rd_pending) ||
  !list_empty(&cl->link));

 return 0;
}
