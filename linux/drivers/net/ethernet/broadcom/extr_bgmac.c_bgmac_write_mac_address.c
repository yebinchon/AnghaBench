
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bgmac {int dummy; } ;


 int BGMAC_MACADDR_HIGH ;
 int BGMAC_MACADDR_LOW ;
 int bgmac_write (struct bgmac*,int ,int) ;

__attribute__((used)) static void bgmac_write_mac_address(struct bgmac *bgmac, u8 *addr)
{
 u32 tmp;

 tmp = (addr[0] << 24) | (addr[1] << 16) | (addr[2] << 8) | addr[3];
 bgmac_write(bgmac, BGMAC_MACADDR_HIGH, tmp);
 tmp = (addr[4] << 8) | addr[5];
 bgmac_write(bgmac, BGMAC_MACADDR_LOW, tmp);
}
