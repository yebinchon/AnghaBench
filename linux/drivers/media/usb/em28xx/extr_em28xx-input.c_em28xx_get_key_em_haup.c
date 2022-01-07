
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
typedef int buf ;


 int EIO ;
 int RC_PROTO_RC5 ;
 int bitrev8 (unsigned char) ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;

__attribute__((used)) static int em28xx_get_key_em_haup(struct i2c_client *i2c_dev,
      enum rc_proto *protocol, u32 *scancode)
{
 unsigned char buf[2];
 int size;


 size = i2c_master_recv(i2c_dev, buf, sizeof(buf));

 if (size != 2)
  return -EIO;


 if (buf[1] == 0xff)
  return 0;
 *protocol = RC_PROTO_RC5;
 *scancode = (bitrev8(buf[1]) & 0x1f) << 8 | bitrev8(buf[0]) >> 2;
 return 1;
}
