
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_priv {int dummy; } ;


 char BIT (int) ;
 int EMAC_MACADDRHI ;
 int EMAC_MACADDRLO ;
 int EMAC_MACINDEX ;
 int emac_set_type0addr (struct emac_priv*,int,char*) ;
 int emac_write (int ,int) ;

__attribute__((used)) static void emac_set_type2addr(struct emac_priv *priv, u32 ch,
          char *mac_addr, int index, int match)
{
 u32 val;
 emac_write(EMAC_MACINDEX, index);
 val = ((mac_addr[3] << 24) | (mac_addr[2] << 16) | (mac_addr[1] << 8) | (mac_addr[0]));

 emac_write(EMAC_MACADDRHI, val);
 val = ((mac_addr[5] << 8) | mac_addr[4] | ((ch & 0x7) << 16) | (match << 19) | BIT(20));

 emac_write(EMAC_MACADDRLO, val);
 emac_set_type0addr(priv, ch, mac_addr);
}
