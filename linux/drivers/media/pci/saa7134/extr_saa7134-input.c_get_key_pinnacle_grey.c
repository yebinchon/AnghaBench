
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct IR_i2c {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int get_key_pinnacle (struct IR_i2c*,int*,int *,int *,int,int,int) ;

__attribute__((used)) static int get_key_pinnacle_grey(struct IR_i2c *ir, enum rc_proto *protocol,
     u32 *scancode, u8 *toggle)
{

 return get_key_pinnacle(ir, protocol, scancode, toggle, 1, 0xfe, 0xff);
}
