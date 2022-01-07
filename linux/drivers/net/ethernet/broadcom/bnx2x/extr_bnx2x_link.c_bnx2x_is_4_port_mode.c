
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int MISC_REG_PORT4MODE_EN ;
 int MISC_REG_PORT4MODE_EN_OVWR ;
 int REG_RD (struct bnx2x*,int ) ;

__attribute__((used)) static u8 bnx2x_is_4_port_mode(struct bnx2x *bp)
{
 u32 port4mode_ovwr_val;

 port4mode_ovwr_val = REG_RD(bp, MISC_REG_PORT4MODE_EN_OVWR);
 if (port4mode_ovwr_val & (1<<0)) {

  return ((port4mode_ovwr_val & (1<<1)) == (1<<1));
 }

 return (u8)REG_RD(bp, MISC_REG_PORT4MODE_EN);
}
