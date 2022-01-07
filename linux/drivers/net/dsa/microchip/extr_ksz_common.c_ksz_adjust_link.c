
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; } ;
struct ksz_port {int read; } ;
struct ksz_device {int live_ports; int on_ports; int dev_mutex; int mib_read; struct ksz_port* ports; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

void ksz_adjust_link(struct dsa_switch *ds, int port,
       struct phy_device *phydev)
{
 struct ksz_device *dev = ds->priv;
 struct ksz_port *p = &dev->ports[port];


 if (!phydev->link) {
  p->read = 1;
  schedule_work(&dev->mib_read);
 }
 mutex_lock(&dev->dev_mutex);
 if (!phydev->link)
  dev->live_ports &= ~(1 << port);
 else

  dev->live_ports |= (1 << port) & dev->on_ports;
 mutex_unlock(&dev->dev_mutex);
}
