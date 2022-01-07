
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned int u32 ;
struct IR_i2c {unsigned int old; int c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 unsigned int ARRAY_SIZE (unsigned char*) ;
 int EIO ;
 int RC_PROTO_UNKNOWN ;
 int i2c_master_recv (int ,unsigned char*,int) ;
 int ir_dbg (struct IR_i2c*,char*,...) ;

__attribute__((used)) static int get_key_pinnacle(struct IR_i2c *ir, enum rc_proto *protocol,
       u32 *scancode, u8 *toggle, int parity_offset,
       int marker, int code_modulo)
{
 int rc;
 unsigned char b[4];
 unsigned int start = 0,parity = 0,code = 0;


 rc = i2c_master_recv(ir->c, b, 4);
 if (rc != 4) {
  ir_dbg(ir, "read error\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }

 for (start = 0; start < ARRAY_SIZE(b); start++) {
  if (b[start] == marker) {
   code=b[(start+parity_offset + 1) % 4];
   parity=b[(start+parity_offset) % 4];
  }
 }


 if (parity == 0)
  return 0;


 if (ir->old == parity)
  return 0;

 ir->old = parity;



 if (marker == 0xfe && (code & 0x40))
  return 0;

 code %= code_modulo;

 *protocol = RC_PROTO_UNKNOWN;
 *scancode = code;
 *toggle = 0;

 ir_dbg(ir, "Pinnacle PCTV key %02x\n", code);
 return 1;
}
