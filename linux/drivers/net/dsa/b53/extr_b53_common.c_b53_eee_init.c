
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct dsa_switch {int dummy; } ;


 int b53_eee_enable_set (struct dsa_switch*,int,int) ;
 int phy_init_eee (struct phy_device*,int ) ;

int b53_eee_init(struct dsa_switch *ds, int port, struct phy_device *phy)
{
 int ret;

 ret = phy_init_eee(phy, 0);
 if (ret)
  return 0;

 b53_eee_enable_set(ds, port, 1);

 return 1;
}
