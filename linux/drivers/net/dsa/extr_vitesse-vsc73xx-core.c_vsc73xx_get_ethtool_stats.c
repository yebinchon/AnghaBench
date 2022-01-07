
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
typedef int u32 ;
struct vsc73xx {int dev; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int ARRAY_SIZE (int *) ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_C_RX0 ;
 int VSC73XX_C_RX1 ;
 int VSC73XX_C_RX2 ;
 int VSC73XX_C_TX0 ;
 int VSC73XX_C_TX1 ;
 int VSC73XX_C_TX2 ;
 int VSC73XX_RXOCT ;
 int VSC73XX_TXOCT ;
 int dev_err (int ,char*,int) ;
 int vsc73xx_read (struct vsc73xx*,int ,int,int ,int *) ;

__attribute__((used)) static void vsc73xx_get_ethtool_stats(struct dsa_switch *ds, int port,
          uint64_t *data)
{
 struct vsc73xx *vsc = ds->priv;
 u8 regs[] = {
  VSC73XX_RXOCT,
  VSC73XX_C_RX0,
  VSC73XX_C_RX1,
  VSC73XX_C_RX2,
  VSC73XX_TXOCT,
  VSC73XX_C_TX0,
  VSC73XX_C_TX1,
  VSC73XX_C_TX2,
 };
 u32 val;
 int ret;
 int i;

 for (i = 0; i < ARRAY_SIZE(regs); i++) {
  ret = vsc73xx_read(vsc, VSC73XX_BLOCK_MAC, port,
       regs[i], &val);
  if (ret) {
   dev_err(vsc->dev, "error reading counter %d\n", i);
   return;
  }
  data[i] = val;
 }
}
