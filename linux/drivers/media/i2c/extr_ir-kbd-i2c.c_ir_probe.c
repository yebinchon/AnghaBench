
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_7__ {int bustype; } ;
struct rc_dev {char const* device_name; char* map_name; int allowed_protocols; int s_tx_duty_cycle; int s_tx_carrier; int tx_ir; scalar_t__ driver_name; int close; int open; struct IR_i2c* priv; TYPE_2__ dev; int input_phys; TYPE_1__ input_id; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_9__ {struct IR_i2c_init_data* platform_data; } ;
struct i2c_client {unsigned short addr; TYPE_3__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {TYPE_3__ dev; } ;
struct IR_i2c_init_data {char* ir_codes; char* name; int type; int internal_get_key_func; void* get_key; scalar_t__ polling_interval; struct rc_dev* rc_dev; } ;
struct IR_i2c {char* ir_codes; int carrier; int duty_cycle; int tx_c; int work; int lock; int phys; void* get_key; struct rc_dev* rc; scalar_t__ polling_interval; struct i2c_client* c; } ;


 int BUS_I2C ;
 scalar_t__ DEFAULT_POLLING_INTERVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FLAG_HDPVR ;
 int FLAG_TX ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;







 scalar_t__ IS_ERR (int ) ;
 scalar_t__ KBUILD_MODNAME ;
 int PTR_ERR (int ) ;
 int RC_DRIVER_SCANCODE ;
 char* RC_MAP_AVERMEDIA_CARDBUS ;
 char* RC_MAP_AVERMEDIA_M733A_RM_K6 ;
 char* RC_MAP_EMPTY ;
 char* RC_MAP_FUSIONHDTV_MCE ;
 char* RC_MAP_HAUPPAUGE ;
 int RC_PROTO_BIT_OTHER ;
 int RC_PROTO_BIT_RC5 ;
 int RC_PROTO_BIT_RC6_6A_32 ;
 int RC_PROTO_BIT_RC6_MCE ;
 int RC_PROTO_BIT_UNKNOWN ;
 int dev_err (TYPE_3__*,char*) ;
 char* dev_name (TYPE_3__*) ;
 int dev_warn (TYPE_3__*,char*,unsigned short) ;
 struct IR_i2c* devm_kzalloc (TYPE_3__*,int,int ) ;
 int enable_hdpvr ;
 void* get_key_avermedia_cardbus ;
 void* get_key_fusionhdtv ;
 void* get_key_haup ;
 void* get_key_haup_xvr ;
 void* get_key_knc1 ;
 void* get_key_pixelview ;
 int i2c_new_dummy_device (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct IR_i2c*) ;
 int i2c_unregister_device (int ) ;
 int ir_close ;
 int ir_open ;
 int ir_work ;
 int mutex_init (int *) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int zilog_init (struct IR_i2c*) ;
 int zilog_tx ;
 int zilog_tx_carrier ;
 int zilog_tx_duty_cycle ;

__attribute__((used)) static int ir_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 char *ir_codes = ((void*)0);
 const char *name = ((void*)0);
 u64 rc_proto = RC_PROTO_BIT_UNKNOWN;
 struct IR_i2c *ir;
 struct rc_dev *rc = ((void*)0);
 struct i2c_adapter *adap = client->adapter;
 unsigned short addr = client->addr;
 bool probe_tx = (id->driver_data & FLAG_TX) != 0;
 int err;

 if ((id->driver_data & FLAG_HDPVR) && !enable_hdpvr) {
  dev_err(&client->dev, "IR for HDPVR is known to cause problems during recording, use enable_hdpvr modparam to enable\n");
  return -ENODEV;
 }

 ir = devm_kzalloc(&client->dev, sizeof(*ir), GFP_KERNEL);
 if (!ir)
  return -ENOMEM;

 ir->c = client;
 ir->polling_interval = DEFAULT_POLLING_INTERVAL;
 i2c_set_clientdata(client, ir);

 switch(addr) {
 case 0x64:
  name = "Pixelview";
  ir->get_key = get_key_pixelview;
  rc_proto = RC_PROTO_BIT_OTHER;
  ir_codes = RC_MAP_EMPTY;
  break;
 case 0x18:
 case 0x1f:
 case 0x1a:
  name = "Hauppauge";
  ir->get_key = get_key_haup;
  rc_proto = RC_PROTO_BIT_RC5;
  ir_codes = RC_MAP_HAUPPAUGE;
  break;
 case 0x30:
  name = "KNC One";
  ir->get_key = get_key_knc1;
  rc_proto = RC_PROTO_BIT_OTHER;
  ir_codes = RC_MAP_EMPTY;
  break;
 case 0x6b:
  name = "FusionHDTV";
  ir->get_key = get_key_fusionhdtv;
  rc_proto = RC_PROTO_BIT_UNKNOWN;
  ir_codes = RC_MAP_FUSIONHDTV_MCE;
  break;
 case 0x40:
  name = "AVerMedia Cardbus remote";
  ir->get_key = get_key_avermedia_cardbus;
  rc_proto = RC_PROTO_BIT_OTHER;
  ir_codes = RC_MAP_AVERMEDIA_CARDBUS;
  break;
 case 0x41:
  name = "AVerMedia EM78P153";
  ir->get_key = get_key_avermedia_cardbus;
  rc_proto = RC_PROTO_BIT_OTHER;

  ir_codes = RC_MAP_AVERMEDIA_M733A_RM_K6;
  break;
 case 0x71:
  name = "Hauppauge/Zilog Z8";
  ir->get_key = get_key_haup_xvr;
  rc_proto = RC_PROTO_BIT_RC5 | RC_PROTO_BIT_RC6_MCE |
       RC_PROTO_BIT_RC6_6A_32;
  ir_codes = RC_MAP_HAUPPAUGE;
  probe_tx = 1;
  break;
 }


 if (client->dev.platform_data) {
  const struct IR_i2c_init_data *init_data =
      client->dev.platform_data;

  ir_codes = init_data->ir_codes;
  rc = init_data->rc_dev;

  name = init_data->name;
  if (init_data->type)
   rc_proto = init_data->type;

  if (init_data->polling_interval)
   ir->polling_interval = init_data->polling_interval;

  switch (init_data->internal_get_key_func) {
  case 133:

   ir->get_key = init_data->get_key;
   break;
  case 128:
   ir->get_key = get_key_pixelview;
   break;
  case 131:
   ir->get_key = get_key_haup;
   break;
  case 129:
   ir->get_key = get_key_knc1;
   break;
  case 132:
   ir->get_key = get_key_fusionhdtv;
   break;
  case 130:
   ir->get_key = get_key_haup_xvr;
   break;
  case 134:
   ir->get_key = get_key_avermedia_cardbus;
   break;
  }
 }

 if (!rc) {




  rc = rc_allocate_device(RC_DRIVER_SCANCODE);
  if (!rc)
   return -ENOMEM;
 }
 ir->rc = rc;


 if (!name || !ir->get_key || !rc_proto || !ir_codes) {
  dev_warn(&client->dev, "Unsupported device at address 0x%02x\n",
    addr);
  err = -ENODEV;
  goto err_out_free;
 }

 ir->ir_codes = ir_codes;

 snprintf(ir->phys, sizeof(ir->phys), "%s/%s", dev_name(&adap->dev),
   dev_name(&client->dev));





 rc->input_id.bustype = BUS_I2C;
 rc->input_phys = ir->phys;
 rc->device_name = name;
 rc->dev.parent = &client->dev;
 rc->priv = ir;
 rc->open = ir_open;
 rc->close = ir_close;




 rc->map_name = ir->ir_codes;
 rc->allowed_protocols = rc_proto;
 if (!rc->driver_name)
  rc->driver_name = KBUILD_MODNAME;

 mutex_init(&ir->lock);

 INIT_DELAYED_WORK(&ir->work, ir_work);

 if (probe_tx) {
  ir->tx_c = i2c_new_dummy_device(client->adapter, 0x70);
  if (IS_ERR(ir->tx_c)) {
   dev_err(&client->dev, "failed to setup tx i2c address");
   err = PTR_ERR(ir->tx_c);
   goto err_out_free;
  } else if (!zilog_init(ir)) {
   ir->carrier = 38000;
   ir->duty_cycle = 40;
   rc->tx_ir = zilog_tx;
   rc->s_tx_carrier = zilog_tx_carrier;
   rc->s_tx_duty_cycle = zilog_tx_duty_cycle;
  }
 }

 err = rc_register_device(rc);
 if (err)
  goto err_out_free;

 return 0;

 err_out_free:
 if (!IS_ERR(ir->tx_c))
  i2c_unregister_device(ir->tx_c);


 rc_free_device(rc);
 return err;
}
