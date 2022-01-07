
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct i2c_client {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int EIO ;
 int RC_PROTO_UNKNOWN ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;

__attribute__((used)) static int em28xx_get_key_terratec(struct i2c_client *i2c_dev,
       enum rc_proto *protocol, u32 *scancode)
{
 int rc;
 unsigned char b;


 rc = i2c_master_recv(i2c_dev, &b, 1);
 if (rc != 1) {
  if (rc < 0)
   return rc;
  return -EIO;
 }






 if (b == 0xff)
  return 0;

 if (b == 0xfe)

  return 1;

 *protocol = RC_PROTO_UNKNOWN;
 *scancode = b;
 return 1;
}
