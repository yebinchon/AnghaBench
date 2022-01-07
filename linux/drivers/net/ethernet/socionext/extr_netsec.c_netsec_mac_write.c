
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsec_priv {int dummy; } ;


 int MAC_REG_CMD ;
 int MAC_REG_DATA ;
 int NETSEC_GMAC_CMD_ST_BUSY ;
 int NETSEC_GMAC_CMD_ST_WRITE ;
 int netsec_wait_while_busy (struct netsec_priv*,int ,int ) ;
 int netsec_write (struct netsec_priv*,int ,int) ;

__attribute__((used)) static int netsec_mac_write(struct netsec_priv *priv, u32 addr, u32 value)
{
 netsec_write(priv, MAC_REG_DATA, value);
 netsec_write(priv, MAC_REG_CMD, addr | NETSEC_GMAC_CMD_ST_WRITE);
 return netsec_wait_while_busy(priv,
          MAC_REG_CMD, NETSEC_GMAC_CMD_ST_BUSY);
}
