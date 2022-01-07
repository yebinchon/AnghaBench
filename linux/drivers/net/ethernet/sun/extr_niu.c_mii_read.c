
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int MIF_FRAME_OUTPUT ;
 int MII_READ_OP (int,int) ;
 int mdio_wait (struct niu*) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int mii_read(struct niu *np, int port, int reg)
{
 nw64(MIF_FRAME_OUTPUT, MII_READ_OP(port, reg));
 return mdio_wait(np);
}
