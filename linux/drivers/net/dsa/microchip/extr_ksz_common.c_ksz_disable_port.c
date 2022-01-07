
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int on_ports; int live_ports; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int dsa_is_user_port (struct dsa_switch*,int) ;

void ksz_disable_port(struct dsa_switch *ds, int port)
{
 struct ksz_device *dev = ds->priv;

 if (!dsa_is_user_port(ds, port))
  return;

 dev->on_ports &= ~(1 << port);
 dev->live_ports &= ~(1 << port);




}
