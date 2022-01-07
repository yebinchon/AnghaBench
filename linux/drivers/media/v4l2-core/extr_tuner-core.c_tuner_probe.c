
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int callback; } ;
struct TYPE_7__ {char* name; int function; } ;
struct TYPE_6__ {TYPE_3__ entity; } ;
struct tuner {char* name; int standby; double radio_freq; int tv_freq; int mode_mask; int type; int list; TYPE_1__ fe; int config; int mode; TYPE_2__ sd; TYPE_4__* pad; struct i2c_client* i2c; int audmode; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int adapter; } ;
typedef int buffer ;
struct TYPE_8__ {void* sig_type; void* flags; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IF_VID_DEC_PAD_IF_INPUT ;
 int IF_VID_DEC_PAD_NUM_PADS ;
 size_t IF_VID_DEC_PAD_OUT ;
 int MEDIA_ENT_F_IF_VID_DECODER ;
 int MEDIA_ENT_F_TUNER ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 void* PAD_SIGNAL_ANALOG ;
 void* PAD_SIGNAL_AUDIO ;
 int TUNER_NUM_PADS ;
 size_t TUNER_PAD_AUD_OUT ;
 size_t TUNER_PAD_OUTPUT ;
 size_t TUNER_PAD_RF_INPUT ;
 int TUNER_TDA9887 ;
 int TUNER_TEA5761 ;
 int TUNER_TEA5767 ;
 int T_ANALOG_TV ;
 int T_RADIO ;
 int UNSET ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int dprintk (char*,...) ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;
 int kfree (struct tuner*) ;
 struct tuner* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int media_entity_pads_init (TYPE_3__*,int ,TYPE_4__*) ;
 int memset (unsigned char*,int ,int) ;
 int no_autodetect ;
 int pr_err (char*) ;
 int pr_info (char*,int,...) ;
 int set_type (struct i2c_client*,int ,int,int ,int ) ;
 scalar_t__ show_i2c ;
 int tda829x_probe ;
 int tea5761_autodetection ;
 int tea5767_autodetection ;
 int tuner_list ;
 int tuner_lookup (int ,struct tuner**,struct tuner**) ;
 int tuner_ops ;
 int tuner_symbol_probe (int ,int ,int) ;
 int v4l2_i2c_subdev_init (TYPE_2__*,struct i2c_client*,int *) ;

__attribute__((used)) static int tuner_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct tuner *t;
 struct tuner *radio;
 struct tuner *tv;




 t = kzalloc(sizeof(struct tuner), GFP_KERNEL);
 if (((void*)0) == t)
  return -ENOMEM;
 v4l2_i2c_subdev_init(&t->sd, client, &tuner_ops);
 t->i2c = client;
 t->name = "(tuner unset)";
 t->type = UNSET;
 t->audmode = V4L2_TUNER_MODE_STEREO;
 t->standby = 1;
 t->radio_freq = 87.5 * 16000;
 t->tv_freq = 400 * 16;

 if (show_i2c) {
  unsigned char buffer[16];
  int rc;

  memset(buffer, 0, sizeof(buffer));
  rc = i2c_master_recv(client, buffer, sizeof(buffer));
  if (rc >= 0)
   pr_info("I2C RECV = %*ph\n", rc, buffer);
 }


 if (!no_autodetect) {
  switch (client->addr) {
  case 0x10:
   if (tuner_symbol_probe(tea5761_autodetection,
            t->i2c->adapter,
            t->i2c->addr) >= 0) {
    t->type = TUNER_TEA5761;
    t->mode_mask = T_RADIO;
    tuner_lookup(t->i2c->adapter, &radio, &tv);
    if (tv)
     tv->mode_mask &= ~T_RADIO;

    goto register_client;
   }
   kfree(t);
   return -ENODEV;
  case 0x42:
  case 0x43:
  case 0x4a:
  case 0x4b:


   if (tuner_symbol_probe(tda829x_probe, t->i2c->adapter,
            t->i2c->addr) >= 0) {
    dprintk("tda829x detected\n");
   } else {

    t->type = TUNER_TDA9887;
    t->mode_mask = T_RADIO | T_ANALOG_TV;
    goto register_client;
   }
   break;
  case 0x60:
   if (tuner_symbol_probe(tea5767_autodetection,
            t->i2c->adapter, t->i2c->addr)
     >= 0) {
    t->type = TUNER_TEA5767;
    t->mode_mask = T_RADIO;

    tuner_lookup(t->i2c->adapter, &radio, &tv);
    if (tv)
     tv->mode_mask &= ~T_RADIO;

    goto register_client;
   }
   break;
  }
 }
 tuner_lookup(t->i2c->adapter, &radio, &tv);
 if (tv == ((void*)0)) {
  t->mode_mask = T_ANALOG_TV;
  if (radio == ((void*)0))
   t->mode_mask |= T_RADIO;
  dprintk("Setting mode_mask to 0x%02x\n", t->mode_mask);
 }


register_client:
 if (t->mode_mask & T_ANALOG_TV)
  t->mode = V4L2_TUNER_ANALOG_TV;
 else
  t->mode = V4L2_TUNER_RADIO;
 set_type(client, t->type, t->mode_mask, t->config, t->fe.callback);
 list_add_tail(&t->list, &tuner_list);

 pr_info("Tuner %d found with type(s)%s%s.\n",
     t->type,
     t->mode_mask & T_RADIO ? " Radio" : "",
     t->mode_mask & T_ANALOG_TV ? " TV" : "");
 return 0;
}
