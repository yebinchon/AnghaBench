
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int read_radio_reg (struct brcms_phy*,int) ;
 int write_radio_reg (struct brcms_phy*,int,int) ;

void xor_radio_reg(struct brcms_phy *pi, u16 addr, u16 mask)
{
 u16 rval;

 rval = read_radio_reg(pi, addr);
 write_radio_reg(pi, addr, (rval ^ mask));
}
