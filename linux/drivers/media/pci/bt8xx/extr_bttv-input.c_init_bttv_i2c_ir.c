
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct i2c_board_info {char* name; int addr; struct i2c_board_info* platform_data; int ir_codes; int get_key; int type; } ;
struct TYPE_2__ {int type; int i2c_adap; } ;
struct bttv {scalar_t__ i2c_rc; TYPE_1__ c; struct i2c_board_info init_data; } ;




 int I2C_NAME_SIZE ;
 int RC_MAP_PV951 ;
 int get_key_pv951 ;
 struct i2c_client* i2c_new_device (int *,struct i2c_board_info*) ;
 struct i2c_client* i2c_new_probed_device (int *,struct i2c_board_info*,unsigned short const*,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int request_module (char*) ;
 int strscpy (int ,char*,int ) ;

void init_bttv_i2c_ir(struct bttv *btv)
{
 static const unsigned short addr_list[] = {
  0x1a, 0x18, 0x64, 0x30, 0x71,
  128
 };
 struct i2c_board_info info;
 struct i2c_client *i2c_dev;

 if (0 != btv->i2c_rc)
  return;

 memset(&info, 0, sizeof(struct i2c_board_info));
 memset(&btv->init_data, 0, sizeof(btv->init_data));
 strscpy(info.type, "ir_video", I2C_NAME_SIZE);

 switch (btv->c.type) {
 case 129:
  btv->init_data.name = "PV951";
  btv->init_data.get_key = get_key_pv951;
  btv->init_data.ir_codes = RC_MAP_PV951;
  info.addr = 0x4b;
  break;
 }

 if (btv->init_data.name) {
  info.platform_data = &btv->init_data;
  i2c_dev = i2c_new_device(&btv->c.i2c_adap, &info);
 } else {
  i2c_dev = i2c_new_probed_device(&btv->c.i2c_adap, &info, addr_list, ((void*)0));
 }
 if (((void*)0) == i2c_dev)
  return;




}
