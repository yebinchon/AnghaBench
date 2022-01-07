
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6060_priv {int dummy; } ;


 int ETH_ALEN ;
 int GLOBAL_MAC_01 ;
 int GLOBAL_MAC_23 ;
 int GLOBAL_MAC_45 ;
 int REG_GLOBAL ;
 int eth_random_addr (int*) ;
 int reg_write (struct mv88e6060_priv*,int ,int ,int) ;

__attribute__((used)) static int mv88e6060_setup_addr(struct mv88e6060_priv *priv)
{
 u8 addr[ETH_ALEN];
 int ret;
 u16 val;

 eth_random_addr(addr);

 val = addr[0] << 8 | addr[1];




 val &= 0xfeff;

 ret = reg_write(priv, REG_GLOBAL, GLOBAL_MAC_01, val);
 if (ret)
  return ret;

 ret = reg_write(priv, REG_GLOBAL, GLOBAL_MAC_23,
   (addr[2] << 8) | addr[3]);
 if (ret)
  return ret;

 return reg_write(priv, REG_GLOBAL, GLOBAL_MAC_45,
    (addr[4] << 8) | addr[5]);
}
