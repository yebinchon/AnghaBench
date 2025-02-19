
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol_version; int max_msg_length; scalar_t__ fixed_address; } ;
struct mei_me_client {TYPE_1__ props; int client_id; } ;
struct mei_device {scalar_t__ dev_state; int dev; int hbm_f_fa_supported; int allow_fixed_address; scalar_t__ override_fixed_address; } ;
struct mei_client {int protocol_version; int max_msg_length; } ;
struct mei_connect_client_data {struct mei_client out_client_properties; int in_client_uuid; } ;
struct mei_cl {scalar_t__ state; struct mei_device* dev; } ;
struct file {struct mei_cl* private_data; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOTTY ;
 scalar_t__ MEI_DEV_ENABLED ;
 scalar_t__ MEI_FILE_DISCONNECTED ;
 scalar_t__ MEI_FILE_INITIALIZING ;
 int dev_dbg (int ,char*,...) ;
 int mei_cl_connect (struct mei_cl*,struct mei_me_client*,struct file*) ;
 struct mei_me_client* mei_me_cl_by_uuid (struct mei_device*,int *) ;
 int mei_me_cl_put (struct mei_me_client*) ;

__attribute__((used)) static int mei_ioctl_connect_client(struct file *file,
   struct mei_connect_client_data *data)
{
 struct mei_device *dev;
 struct mei_client *client;
 struct mei_me_client *me_cl;
 struct mei_cl *cl;
 int rets;

 cl = file->private_data;
 dev = cl->dev;

 if (dev->dev_state != MEI_DEV_ENABLED)
  return -ENODEV;

 if (cl->state != MEI_FILE_INITIALIZING &&
     cl->state != MEI_FILE_DISCONNECTED)
  return -EBUSY;


 me_cl = mei_me_cl_by_uuid(dev, &data->in_client_uuid);
 if (!me_cl) {
  dev_dbg(dev->dev, "Cannot connect to FW Client UUID = %pUl\n",
   &data->in_client_uuid);
  rets = -ENOTTY;
  goto end;
 }

 if (me_cl->props.fixed_address) {
  bool forbidden = dev->override_fixed_address ?
    !dev->allow_fixed_address : !dev->hbm_f_fa_supported;
  if (forbidden) {
   dev_dbg(dev->dev, "Connection forbidden to FW Client UUID = %pUl\n",
    &data->in_client_uuid);
   rets = -ENOTTY;
   goto end;
  }
 }

 dev_dbg(dev->dev, "Connect to FW Client ID = %d\n",
   me_cl->client_id);
 dev_dbg(dev->dev, "FW Client - Protocol Version = %d\n",
   me_cl->props.protocol_version);
 dev_dbg(dev->dev, "FW Client - Max Msg Len = %d\n",
   me_cl->props.max_msg_length);


 client = &data->out_client_properties;
 client->max_msg_length = me_cl->props.max_msg_length;
 client->protocol_version = me_cl->props.protocol_version;
 dev_dbg(dev->dev, "Can connect?\n");

 rets = mei_cl_connect(cl, me_cl, file);

end:
 mei_me_cl_put(me_cl);
 return rets;
}
