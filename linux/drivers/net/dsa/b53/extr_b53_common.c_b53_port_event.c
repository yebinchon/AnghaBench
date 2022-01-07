
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {int dummy; } ;


 int B53_LINK_STAT ;
 int B53_STAT_PAGE ;
 int BIT (int) ;
 int b53_read16 (struct b53_device*,int ,int ,int*) ;
 int dsa_port_phylink_mac_change (struct dsa_switch*,int,int) ;

void b53_port_event(struct dsa_switch *ds, int port)
{
 struct b53_device *dev = ds->priv;
 bool link;
 u16 sts;

 b53_read16(dev, B53_STAT_PAGE, B53_LINK_STAT, &sts);
 link = !!(sts & BIT(port));
 dsa_port_phylink_mac_change(ds, port, link);
}
