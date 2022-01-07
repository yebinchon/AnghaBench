
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct IR_i2c {int c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int EINVAL ;
 int get_key_haup_common (struct IR_i2c*,int*,int *,int *,int) ;
 int i2c_master_send (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_haup_xvr(struct IR_i2c *ir, enum rc_proto *protocol,
       u32 *scancode, u8 *toggle)
{
 int ret;
 unsigned char buf[1] = { 0 };







 ret = i2c_master_send(ir->c, buf, 1);
 if (ret != 1)
  return (ret < 0) ? ret : -EINVAL;

 return get_key_haup_common(ir, protocol, scancode, toggle, 6);
}
