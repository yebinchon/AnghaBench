
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tveeprom {int dummy; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ decoder; scalar_t__ tuner_type; int tuner_i2c_master; } ;
struct cx231xx {size_t model; int tuner_addr; int dev; int * sd_tuner; int v4l2_dev; TYPE_1__ board; int * sd_cx25840; int tuner_type; } ;
struct TYPE_4__ {int tuner_addr; int tuner_type; } ;


 scalar_t__ CX231XX_AVDECODER ;





 int GFP_KERNEL ;
 int I2C_0 ;
 int I2C_1_MUX_1 ;
 scalar_t__ TUNER_ABSENT ;
 int core ;
 TYPE_2__* cx231xx_boards ;
 int cx231xx_config_tuner (struct cx231xx*) ;
 struct i2c_adapter* cx231xx_get_i2c_adap (struct cx231xx*,int ) ;
 int cx231xx_set_model (struct cx231xx*) ;
 int cx25840_call (struct cx231xx*,int ,int ) ;
 int dev_err (int ,char*) ;
 int kfree (struct eeprom*) ;
 struct eeprom* kzalloc (int,int ) ;
 int load_fw ;
 int read_eeprom (struct cx231xx*,struct i2c_client*,int *,int) ;
 int tveeprom_hauppauge_analog (struct tveeprom*,int ) ;
 void* v4l2_i2c_new_subdev (int *,struct i2c_adapter*,char*,int,int *) ;

void cx231xx_card_setup(struct cx231xx *dev)
{

 cx231xx_set_model(dev);

 dev->tuner_type = cx231xx_boards[dev->model].tuner_type;
 if (cx231xx_boards[dev->model].tuner_addr)
  dev->tuner_addr = cx231xx_boards[dev->model].tuner_addr;


 if (dev->board.decoder == CX231XX_AVDECODER) {
  dev->sd_cx25840 = v4l2_i2c_new_subdev(&dev->v4l2_dev,
     cx231xx_get_i2c_adap(dev, I2C_0),
     "cx25840", 0x88 >> 1, ((void*)0));
  if (dev->sd_cx25840 == ((void*)0))
   dev_err(dev->dev,
    "cx25840 subdev registration failure\n");
  cx25840_call(dev, core, load_fw);

 }


 if (dev->board.tuner_type != TUNER_ABSENT) {
  struct i2c_adapter *tuner_i2c = cx231xx_get_i2c_adap(dev,
      dev->board.tuner_i2c_master);
  dev->sd_tuner = v4l2_i2c_new_subdev(&dev->v4l2_dev,
          tuner_i2c,
          "tuner",
          dev->tuner_addr, ((void*)0));
  if (dev->sd_tuner == ((void*)0))
   dev_err(dev->dev,
    "tuner subdev registration failure\n");
  else
   cx231xx_config_tuner(dev);
 }

 switch (dev->model) {
 case 132:
 case 131:
 case 129:
 case 130:
 case 128:
  {
   struct eeprom {
    struct tveeprom tvee;
    u8 eeprom[256];
    struct i2c_client client;
   };
   struct eeprom *e = kzalloc(sizeof(*e), GFP_KERNEL);

   if (e == ((void*)0)) {
    dev_err(dev->dev,
     "failed to allocate memory to read eeprom\n");
    break;
   }
   e->client.adapter = cx231xx_get_i2c_adap(dev, I2C_1_MUX_1);
   e->client.addr = 0xa0 >> 1;

   read_eeprom(dev, &e->client, e->eeprom, sizeof(e->eeprom));
   tveeprom_hauppauge_analog(&e->tvee, e->eeprom + 0xc0);
   kfree(e);
   break;
  }
 }

}
