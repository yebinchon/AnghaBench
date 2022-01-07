
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv6110x_state {int regs; } ;


 int memcpy (int ,int*,int) ;

__attribute__((used)) static void st6110x_init_regs(struct stv6110x_state *stv6110x)
{
 u8 default_regs[] = {0x07, 0x11, 0xdc, 0x85, 0x17, 0x01, 0xe6, 0x1e};

 memcpy(stv6110x->regs, default_regs, 8);
}
