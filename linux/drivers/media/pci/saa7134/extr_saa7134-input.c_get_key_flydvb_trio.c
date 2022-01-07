
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned char u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_5__ {TYPE_1__* adapter; } ;
struct TYPE_4__ {struct saa7134_dev* algo_data; } ;


 int EIO ;
 int RC_PROTO_UNKNOWN ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int i2c_master_recv (TYPE_2__*,unsigned char*,int) ;
 int i2c_master_send (TYPE_2__*,unsigned char*,int) ;
 int ir_dbg (struct IR_i2c*,char*,...) ;
 int msleep (int) ;
 int saa_clearb (int ,int ) ;
 int saa_readl (int) ;
 int saa_setb (int ,int ) ;

__attribute__((used)) static int get_key_flydvb_trio(struct IR_i2c *ir, enum rc_proto *protocol,
          u32 *scancode, u8 *toggle)
{
 int gpio, rc;
 int attempt = 0;
 unsigned char b;


 struct saa7134_dev *dev = ir->c->adapter->algo_data;

 if (dev == ((void*)0)) {
  ir_dbg(ir, "get_key_flydvb_trio: ir->c->adapter->algo_data is NULL!\n");
  return -EIO;
 }


 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

 gpio = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);

 if (0x40000 & ~gpio)
  return 0;



 b = 0;

 while (1 != i2c_master_send(ir->c, &b, 1)) {
  if ((attempt++) < 10) {




   msleep(10);
   continue;
  }
  ir_dbg(ir, "send wake up byte to pic16C505 (IR chip)failed %dx\n",
         attempt);
  return -EIO;
 }
 rc = i2c_master_recv(ir->c, &b, 1);
 if (rc != 1) {
  ir_dbg(ir, "read error\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }

 *protocol = RC_PROTO_UNKNOWN;
 *scancode = b;
 *toggle = 0;
 return 1;
}
