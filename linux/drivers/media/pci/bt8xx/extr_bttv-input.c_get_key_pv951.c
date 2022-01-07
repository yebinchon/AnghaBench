
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned char u32 ;
struct IR_i2c {int c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int EIO ;
 int RC_PROTO_UNKNOWN ;
 int dprintk (char*,...) ;
 int i2c_master_recv (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_pv951(struct IR_i2c *ir, enum rc_proto *protocol,
    u32 *scancode, u8 *toggle)
{
 int rc;
 unsigned char b;


 rc = i2c_master_recv(ir->c, &b, 1);
 if (rc != 1) {
  dprintk("read error\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }


 if (b==0xaa)
  return 0;
 dprintk("key %02x\n", b);
 *protocol = RC_PROTO_UNKNOWN;
 *scancode = b;
 *toggle = 0;
 return 1;
}
