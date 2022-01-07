
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PutByte (int ,int) ;
 int XIRCREG2_GPR2 ;
 int udelay (int) ;

__attribute__((used)) static void
mii_idle(unsigned int ioaddr)
{
    PutByte(XIRCREG2_GPR2, 0x04|0);
    udelay(1);
    PutByte(XIRCREG2_GPR2, 0x04|1);
    udelay(1);
}
