
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned char u32 ;
struct IR_i2c {TYPE_1__* rc; int c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int RC_PROTO_OTHER ;
 int dev_dbg (int *,char*) ;
 int i2c_master_recv (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_pixelview(struct IR_i2c *ir, enum rc_proto *protocol,
        u32 *scancode, u8 *toggle)
{
 int rc;
 unsigned char b;


 rc = i2c_master_recv(ir->c, &b, 1);
 if (rc != 1) {
  dev_dbg(&ir->rc->dev, "read error\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }

 *protocol = RC_PROTO_OTHER;
 *scancode = b;
 *toggle = 0;
 return 1;
}
