
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned char u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_4__ {TYPE_1__* adapter; } ;
struct TYPE_3__ {struct saa7134_dev* algo_data; } ;


 int EIO ;
 int RC_PROTO_UNKNOWN ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int i2c_master_recv (TYPE_2__*,unsigned char*,int) ;
 int input_dbg (char*,unsigned char) ;
 int ir_dbg (struct IR_i2c*,char*) ;
 int saa_clearb (int ,int ) ;
 unsigned int saa_readl (int) ;
 int saa_setb (int ,int ) ;

__attribute__((used)) static int get_key_kworld_pc150u(struct IR_i2c *ir, enum rc_proto *protocol,
     u32 *scancode, u8 *toggle)
{
 unsigned char b;
 unsigned int gpio;
 int rc;


 struct saa7134_dev *dev = ir->c->adapter->algo_data;
 if (dev == ((void*)0)) {
  ir_dbg(ir, "get_key_kworld_pc150u: ir->c->adapter->algo_data is NULL!\n");
  return -EIO;
 }



 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

 gpio = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);




 if (gpio & 0x100)
  return 0;



 rc = i2c_master_recv(ir->c, &b, 1);
 if (rc != 1) {
  ir_dbg(ir, "read error\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }



 if (b == 0xff)
  return 0;



 input_dbg("get_key_kworld_pc150u: Key = 0x%02X\n", b);
 *protocol = RC_PROTO_UNKNOWN;
 *scancode = b;
 *toggle = 0;
 return 1;
}
