
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_tse_private {int mac_dev; } ;


 int csrwr32 (int,int ,int ) ;
 int mac_addr_0 ;
 int mac_addr_1 ;
 int tse_csroffs (int ) ;

__attribute__((used)) static void tse_update_mac_addr(struct altera_tse_private *priv, u8 *addr)
{
 u32 msb;
 u32 lsb;

 msb = (addr[3] << 24) | (addr[2] << 16) | (addr[1] << 8) | addr[0];
 lsb = ((addr[5] << 8) | addr[4]) & 0xffff;


 csrwr32(msb, priv->mac_dev, tse_csroffs(mac_addr_0));
 csrwr32(lsb, priv->mac_dev, tse_csroffs(mac_addr_1));
}
