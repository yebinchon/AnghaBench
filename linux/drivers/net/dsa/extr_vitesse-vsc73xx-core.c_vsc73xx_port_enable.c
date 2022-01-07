
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx {int dev; } ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int dev_info (int ,char*,int) ;
 int vsc73xx_init_port (struct vsc73xx*,int) ;

__attribute__((used)) static int vsc73xx_port_enable(struct dsa_switch *ds, int port,
          struct phy_device *phy)
{
 struct vsc73xx *vsc = ds->priv;

 dev_info(vsc->dev, "enable port %d\n", port);
 vsc73xx_init_port(vsc, port);

 return 0;
}
