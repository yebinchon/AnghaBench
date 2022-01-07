
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int demux; } ;
struct vb2_dvb_frontend {TYPE_2__ dvb; } ;
struct sp2_config {int addr; int type; struct sp2_config* platform_data; int ci_control; struct cx23885_tsport* priv; TYPE_5__* dvb_adap; } ;
struct netup_card_info {TYPE_1__* port; } ;
struct TYPE_12__ {TYPE_3__* driver; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct i2c_board_info {int addr; int type; struct i2c_board_info* platform_data; int ci_control; struct cx23885_tsport* priv; TYPE_5__* dvb_adap; } ;
struct TYPE_13__ {int * proposed_mac; } ;
struct TYPE_14__ {TYPE_5__ adapter; } ;
struct cx23885_tsport {int nr; TYPE_6__ frontends; struct i2c_client* i2c_client_ci; struct cx23885_dev* dev; } ;
struct TYPE_15__ {int addr; } ;
struct cx23885_i2c {TYPE_7__ i2c_client; int i2c_adap; } ;
struct cx23885_dev {int board; struct cx23885_i2c* i2c_bus; } ;
struct altera_ci_config {int fpga_rw; int * demux; TYPE_5__* adapter; struct cx23885_dev* dev; } ;
typedef int sp2_config ;
typedef int eeprom ;
struct TYPE_16__ {int name; } ;
struct TYPE_11__ {int owner; } ;
struct TYPE_9__ {int * mac; } ;
 int EINVAL ;
 int ENODEV ;
 int I2C_NAME_SIZE ;
 int altera_ci_init (struct altera_ci_config*,int) ;
 TYPE_8__* cx23885_boards ;
 int cx23885_sp2_ci_ctrl ;
 struct i2c_client* i2c_new_device (int *,struct sp2_config*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sp2_config*,int ,int) ;
 int netup_altera_fpga_rw ;
 int netup_ci_init (struct cx23885_tsport*) ;
 int netup_get_card_info (int *,struct netup_card_info*) ;
 int pr_info (char*,int,...) ;
 int request_module (int ) ;
 int strscpy (int ,char*,int ) ;
 int try_module_get (int ) ;
 int tveeprom_read (TYPE_7__*,int *,int) ;
 struct vb2_dvb_frontend* vb2_dvb_get_frontend (TYPE_6__*,int) ;

__attribute__((used)) static int dvb_register_ci_mac(struct cx23885_tsport *port)
{
 struct cx23885_dev *dev = port->dev;
 struct i2c_client *client_ci = ((void*)0);
 struct vb2_dvb_frontend *fe0;

 fe0 = vb2_dvb_get_frontend(&port->frontends, 1);
 if (!fe0)
  return -EINVAL;

 switch (dev->board) {
 case 131: {
  static struct netup_card_info cinfo;

  netup_get_card_info(&dev->i2c_bus[0].i2c_adap, &cinfo);
  memcpy(port->frontends.adapter.proposed_mac,
    cinfo.port[port->nr - 1].mac, 6);
  pr_info("NetUP Dual DVB-S2 CI card port%d MAC=%pM\n",
   port->nr, port->frontends.adapter.proposed_mac);

  netup_ci_init(port);
  return 0;
  }
 case 130: {
  struct altera_ci_config netup_ci_cfg = {
   .dev = dev,
   .adapter = &port->frontends.adapter,
   .demux = &fe0->dvb.demux,
   .fpga_rw = netup_altera_fpga_rw,
  };

  altera_ci_init(&netup_ci_cfg, port->nr);
  return 0;
  }
 case 129: {
  u8 eeprom[256];

  if (port->nr != 1)
   return 0;


  dev->i2c_bus[0].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[0].i2c_client, eeprom, sizeof(eeprom));
  pr_info("TeVii S470 MAC= %pM\n", eeprom + 0xa0);
  memcpy(port->frontends.adapter.proposed_mac, eeprom + 0xa0, 6);
  return 0;
  }
 case 134:
 case 137:
 case 135:
 case 132: {
  u8 eeprom[256];

  if (port->nr > 2)
   return 0;


  dev->i2c_bus[0].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[0].i2c_client, eeprom,
    sizeof(eeprom));
  pr_info("%s port %d MAC address: %pM\n",
   cx23885_boards[dev->board].name, port->nr,
   eeprom + 0xc0 + (port->nr-1) * 8);
  memcpy(port->frontends.adapter.proposed_mac, eeprom + 0xc0 +
   (port->nr-1) * 8, 6);
  return 0;
  }
 case 136:
 case 133:
 case 128: {
  u8 eeprom[256];
  struct sp2_config sp2_config;
  struct i2c_board_info info;
  struct cx23885_i2c *i2c_bus = &dev->i2c_bus[0];


  memset(&sp2_config, 0, sizeof(sp2_config));
  sp2_config.dvb_adap = &port->frontends.adapter;
  sp2_config.priv = port;
  sp2_config.ci_control = cx23885_sp2_ci_ctrl;
  memset(&info, 0, sizeof(struct i2c_board_info));
  strscpy(info.type, "sp2", I2C_NAME_SIZE);
  info.addr = 0x40;
  info.platform_data = &sp2_config;
  request_module(info.type);
  client_ci = i2c_new_device(&i2c_bus->i2c_adap, &info);
  if (client_ci == ((void*)0) || client_ci->dev.driver == ((void*)0))
   return -ENODEV;
  if (!try_module_get(client_ci->dev.driver->owner)) {
   i2c_unregister_device(client_ci);
   return -ENODEV;
  }
  port->i2c_client_ci = client_ci;

  if (port->nr != 1)
   return 0;


  dev->i2c_bus[0].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[0].i2c_client, eeprom,
    sizeof(eeprom));
  pr_info("%s MAC address: %pM\n",
   cx23885_boards[dev->board].name, eeprom + 0xc0);
  memcpy(port->frontends.adapter.proposed_mac, eeprom + 0xc0, 6);
  return 0;
  }
 }
 return 0;
}
