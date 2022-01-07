
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_4__ {int addr; TYPE_1__* adapter; } ;
struct TYPE_3__ {struct saa7134_dev* algo_data; } ;


 int EIO ;
 int RC_PROTO_NECX ;
 int RC_SCANCODE_NECX (unsigned char,unsigned char) ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int i2c_master_recv (TYPE_2__*,unsigned char*,int) ;
 int ir_dbg (struct IR_i2c*,char*) ;
 int saa_clearb (int ,int ) ;
 int saa_readl (int) ;
 int saa_setb (int ,int ) ;

__attribute__((used)) static int get_key_beholdm6xx(struct IR_i2c *ir, enum rc_proto *protocol,
         u32 *scancode, u8 *toggle)
{
 int rc;
 unsigned char data[12];
 u32 gpio;

 struct saa7134_dev *dev = ir->c->adapter->algo_data;


 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

 gpio = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);

 if (0x400000 & ~gpio)
  return 0;

 ir->c->addr = 0x5a >> 1;

 rc = i2c_master_recv(ir->c, data, 12);
 if (rc != 12) {
  ir_dbg(ir, "read error\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }

 if (data[9] != (unsigned char)(~data[8]))
  return 0;

 *protocol = RC_PROTO_NECX;
 *scancode = RC_SCANCODE_NECX(data[11] << 8 | data[10], data[9]);
 *toggle = 0;
 return 1;
}
