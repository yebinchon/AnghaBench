
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6060_priv {int dummy; } ;
struct dsa_switch {struct mv88e6060_priv* priv; } ;


 int mv88e6060_port_to_phy_addr (int) ;
 int reg_write (struct mv88e6060_priv*,int,int,int ) ;

__attribute__((used)) static int
mv88e6060_phy_write(struct dsa_switch *ds, int port, int regnum, u16 val)
{
 struct mv88e6060_priv *priv = ds->priv;
 int addr;

 addr = mv88e6060_port_to_phy_addr(port);
 if (addr == -1)
  return 0xffff;

 return reg_write(priv, addr, regnum, val);
}
