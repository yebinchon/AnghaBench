
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_board_info {int type; char* name; unsigned short addr; struct i2c_board_info* platform_data; int internal_get_key_func; int ir_codes; int get_key; } ;
struct TYPE_2__ {char* name; } ;
struct cx88_core {scalar_t__ i2c_rc; int boardnr; int i2c_adap; struct i2c_board_info init_data; TYPE_1__ board; } ;




 int I2C_NAME_SIZE ;
 int I2C_SMBUS_QUICK ;
 int I2C_SMBUS_READ ;
 int IR_KBD_GET_KEY_HAUP_XVR ;
 int RC_MAP_EMPTY ;
 int RC_MAP_HAUPPAUGE ;
 int RC_PROTO_BIT_RC5 ;
 int RC_PROTO_BIT_RC6_6A_32 ;
 int RC_PROTO_BIT_RC6_MCE ;
 int RC_PROTO_BIT_UNKNOWN ;
 int get_key_pvr2000 ;
 int i2c_new_device (int *,struct i2c_board_info*) ;
 scalar_t__ i2c_smbus_xfer (int *,unsigned short const,int ,int ,int ,int ,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strscpy (int,char*,int ) ;

void cx88_i2c_init_ir(struct cx88_core *core)
{
 struct i2c_board_info info;
 static const unsigned short default_addr_list[] = {
  0x18, 0x6b, 0x71,
  128
 };
 static const unsigned short pvr2000_addr_list[] = {
  0x18, 0x1a,
  128
 };
 const unsigned short *addr_list = default_addr_list;
 const unsigned short *addrp;

 if (core->i2c_rc != 0)
  return;

 memset(&info, 0, sizeof(struct i2c_board_info));
 strscpy(info.type, "ir_video", I2C_NAME_SIZE);

 switch (core->boardnr) {
 case 129:
  addr_list = pvr2000_addr_list;
  core->init_data.name = "cx88 Leadtek PVR 2000 remote";
  core->init_data.type = RC_PROTO_BIT_UNKNOWN;
  core->init_data.get_key = get_key_pvr2000;
  core->init_data.ir_codes = RC_MAP_EMPTY;
  break;
 }
 for (addrp = addr_list; *addrp != 128; addrp++) {
  info.platform_data = ((void*)0);
  memset(&core->init_data, 0, sizeof(core->init_data));

  if (*addrp == 0x71) {

   strscpy(info.type, "ir_z8f0811_haup", I2C_NAME_SIZE);
   core->init_data.name = core->board.name;
   core->init_data.ir_codes = RC_MAP_HAUPPAUGE;
   core->init_data.type = RC_PROTO_BIT_RC5 |
    RC_PROTO_BIT_RC6_MCE | RC_PROTO_BIT_RC6_6A_32;
   core->init_data.internal_get_key_func = IR_KBD_GET_KEY_HAUP_XVR;

   info.platform_data = &core->init_data;
  }
  if (i2c_smbus_xfer(&core->i2c_adap, *addrp, 0,
       I2C_SMBUS_READ, 0,
       I2C_SMBUS_QUICK, ((void*)0)) >= 0) {
   info.addr = *addrp;
   i2c_new_device(&core->i2c_adap, &info);
   break;
  }
 }
}
