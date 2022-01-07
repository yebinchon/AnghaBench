
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int open_handle_count; int host_clients_map; int file_list; int dev; } ;
struct mei_cl {int host_client_id; int state; int link; struct mei_device* dev; } ;


 int EINVAL ;
 int EMFILE ;
 int MEI_CLIENTS_MAX ;
 int MEI_FILE_INITIALIZING ;
 int MEI_MAX_OPEN_HANDLE_COUNT ;
 scalar_t__ WARN_ON (int) ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int dev_err (int ,char*,int) ;
 int find_first_zero_bit (int ,int) ;
 int list_add_tail (int *,int *) ;
 int set_bit (int,int ) ;

int mei_cl_link(struct mei_cl *cl)
{
 struct mei_device *dev;
 int id;

 if (WARN_ON(!cl || !cl->dev))
  return -EINVAL;

 dev = cl->dev;

 id = find_first_zero_bit(dev->host_clients_map, MEI_CLIENTS_MAX);
 if (id >= MEI_CLIENTS_MAX) {
  dev_err(dev->dev, "id exceeded %d", MEI_CLIENTS_MAX);
  return -EMFILE;
 }

 if (dev->open_handle_count >= MEI_MAX_OPEN_HANDLE_COUNT) {
  dev_err(dev->dev, "open_handle_count exceeded %d",
   MEI_MAX_OPEN_HANDLE_COUNT);
  return -EMFILE;
 }

 dev->open_handle_count++;

 cl->host_client_id = id;
 list_add_tail(&cl->link, &dev->file_list);

 set_bit(id, dev->host_clients_map);

 cl->state = MEI_FILE_INITIALIZING;

 cl_dbg(dev, cl, "link cl\n");
 return 0;
}
