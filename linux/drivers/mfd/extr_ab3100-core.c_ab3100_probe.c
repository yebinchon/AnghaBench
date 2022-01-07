
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; scalar_t__ addr; int adapter; } ;
struct ab3100_platform_data {int dummy; } ;
struct ab3100 {int chip_id; int testreg_client; int * chip_name; struct i2c_client* i2c_client; int * dev; int event_subscribers; int access_mutex; } ;
struct TYPE_6__ {int id; char* name; } ;
struct TYPE_5__ {int pdata_size; struct ab3100_platform_data* platform_data; } ;


 int AB3100_CID ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_1__* ab3100_devs ;
 int ab3100_get_register_interruptible (struct ab3100*,int ,int*) ;
 int ab3100_irq_handler ;
 int ab3100_ops ;
 int ab3100_setup (struct ab3100*) ;
 int ab3100_setup_debugfs (struct ab3100*) ;
 int abx500_register_ops (int *,int *) ;
 int dev_err (int *,char*,...) ;
 struct ab3100_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int *) ;
 struct ab3100* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,char*,struct ab3100*) ;
 int i2c_new_dummy_device (int ,scalar_t__) ;
 int i2c_set_clientdata (struct i2c_client*,struct ab3100*) ;
 int i2c_unregister_device (int ) ;
 TYPE_2__* ids ;
 int mfd_add_devices (int *,int ,TYPE_1__*,int,int *,int ,int *) ;
 int mutex_init (int *) ;
 int snprintf (int *,int,char*,char*) ;

__attribute__((used)) static int ab3100_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct ab3100 *ab3100;
 struct ab3100_platform_data *ab3100_plf_data =
  dev_get_platdata(&client->dev);
 int err;
 int i;

 ab3100 = devm_kzalloc(&client->dev, sizeof(struct ab3100), GFP_KERNEL);
 if (!ab3100)
  return -ENOMEM;


 mutex_init(&ab3100->access_mutex);
 BLOCKING_INIT_NOTIFIER_HEAD(&ab3100->event_subscribers);

 ab3100->i2c_client = client;
 ab3100->dev = &ab3100->i2c_client->dev;

 i2c_set_clientdata(client, ab3100);


 err = ab3100_get_register_interruptible(ab3100, AB3100_CID,
      &ab3100->chip_id);
 if (err) {
  dev_err(&client->dev,
   "failed to communicate with AB3100 chip\n");
  goto exit_no_detect;
 }

 for (i = 0; ids[i].id != 0x0; i++) {
  if (ids[i].id == ab3100->chip_id) {
   if (ids[i].name)
    break;

   dev_err(&client->dev, "AB3000 is not supported\n");
   goto exit_no_detect;
  }
 }

 snprintf(&ab3100->chip_name[0],
   sizeof(ab3100->chip_name) - 1, "AB3100 %s", ids[i].name);

 if (ids[i].id == 0x0) {
  dev_err(&client->dev, "unknown analog baseband chip id: 0x%x\n",
   ab3100->chip_id);
  dev_err(&client->dev,
   "accepting it anyway. Please update the driver.\n");
  goto exit_no_detect;
 }

 dev_info(&client->dev, "Detected chip: %s\n",
   &ab3100->chip_name[0]);


 ab3100->testreg_client = i2c_new_dummy_device(client->adapter,
            client->addr + 1);
 if (IS_ERR(ab3100->testreg_client)) {
  err = PTR_ERR(ab3100->testreg_client);
  goto exit_no_testreg_client;
 }

 err = ab3100_setup(ab3100);
 if (err)
  goto exit_no_setup;

 err = devm_request_threaded_irq(&client->dev,
     client->irq, ((void*)0), ab3100_irq_handler,
     IRQF_ONESHOT, "ab3100-core", ab3100);
 if (err)
  goto exit_no_irq;

 err = abx500_register_ops(&client->dev, &ab3100_ops);
 if (err)
  goto exit_no_ops;


 for (i = 0; i < ARRAY_SIZE(ab3100_devs); i++) {
  ab3100_devs[i].platform_data = ab3100_plf_data;
  ab3100_devs[i].pdata_size = sizeof(struct ab3100_platform_data);
 }

 err = mfd_add_devices(&client->dev, 0, ab3100_devs,
         ARRAY_SIZE(ab3100_devs), ((void*)0), 0, ((void*)0));

 ab3100_setup_debugfs(ab3100);

 return 0;

 exit_no_ops:
 exit_no_irq:
 exit_no_setup:
 i2c_unregister_device(ab3100->testreg_client);
 exit_no_testreg_client:
 exit_no_detect:
 return err;
}
