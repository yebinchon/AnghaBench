
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx {int dummy; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_MAC_CFG ;
 int VSC73XX_MAC_CFG_RESET ;
 int vsc73xx_write (struct vsc73xx*,int ,int,int ,int ) ;

__attribute__((used)) static void vsc73xx_port_disable(struct dsa_switch *ds, int port)
{
 struct vsc73xx *vsc = ds->priv;


 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, port,
        VSC73XX_MAC_CFG, VSC73XX_MAC_CFG_RESET);
}
