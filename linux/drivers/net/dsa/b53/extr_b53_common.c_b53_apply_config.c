
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {int ds; } ;


 int b53_configure_vlan (int ) ;
 int b53_set_forwarding (struct b53_device*,int) ;

__attribute__((used)) static int b53_apply_config(struct b53_device *priv)
{

 b53_set_forwarding(priv, 0);

 b53_configure_vlan(priv->ds);


 b53_set_forwarding(priv, 1);

 return 0;
}
