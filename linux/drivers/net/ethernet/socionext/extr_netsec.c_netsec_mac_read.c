
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsec_priv {int dummy; } ;


 int MAC_REG_CMD ;
 int MAC_REG_DATA ;
 int NETSEC_GMAC_CMD_ST_BUSY ;
 int NETSEC_GMAC_CMD_ST_READ ;
 int netsec_read (struct netsec_priv*,int ) ;
 int netsec_wait_while_busy (struct netsec_priv*,int ,int ) ;
 int netsec_write (struct netsec_priv*,int ,int) ;

__attribute__((used)) static int netsec_mac_read(struct netsec_priv *priv, u32 addr, u32 *read)
{
 int ret;

 netsec_write(priv, MAC_REG_CMD, addr | NETSEC_GMAC_CMD_ST_READ);
 ret = netsec_wait_while_busy(priv,
         MAC_REG_CMD, NETSEC_GMAC_CMD_ST_BUSY);
 if (ret)
  return ret;

 *read = netsec_read(priv, MAC_REG_DATA);

 return 0;
}
