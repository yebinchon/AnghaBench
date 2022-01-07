
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {struct b53_device* priv; } ;
struct dsa_mall_mirror_tc_entry {int to_local_port; } ;
struct b53_device {int dummy; } ;


 int B53_EG_MIR_CTL ;
 int B53_IG_MIR_CTL ;
 int B53_MGMT_PAGE ;
 int B53_MIR_CAP_CTL ;
 int BIT (int) ;
 int CAP_PORT_MASK ;
 int MIRROR_EN ;
 int b53_read16 (struct b53_device*,int ,int ,int *) ;
 int b53_write16 (struct b53_device*,int ,int ,int ) ;

int b53_mirror_add(struct dsa_switch *ds, int port,
     struct dsa_mall_mirror_tc_entry *mirror, bool ingress)
{
 struct b53_device *dev = ds->priv;
 u16 reg, loc;

 if (ingress)
  loc = B53_IG_MIR_CTL;
 else
  loc = B53_EG_MIR_CTL;

 b53_read16(dev, B53_MGMT_PAGE, loc, &reg);
 reg |= BIT(port);
 b53_write16(dev, B53_MGMT_PAGE, loc, reg);

 b53_read16(dev, B53_MGMT_PAGE, B53_MIR_CAP_CTL, &reg);
 reg &= ~CAP_PORT_MASK;
 reg |= mirror->to_local_port;
 reg |= MIRROR_EN;
 b53_write16(dev, B53_MGMT_PAGE, B53_MIR_CAP_CTL, reg);

 return 0;
}
