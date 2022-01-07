
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hip04_priv {int port; int map; } ;


 scalar_t__ PPE_CFG_RX_ADDR ;
 scalar_t__ PPE_CURR_BUF_CNT ;
 scalar_t__ RESET_TIMEOUT ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static void hip04_reset_ppe(struct hip04_priv *priv)
{
 u32 val, tmp, timeout = 0;

 do {
  regmap_read(priv->map, priv->port * 4 + PPE_CURR_BUF_CNT, &val);
  regmap_read(priv->map, priv->port * 4 + PPE_CFG_RX_ADDR, &tmp);
  if (timeout++ > RESET_TIMEOUT)
   break;
 } while (val & 0xfff);
}
