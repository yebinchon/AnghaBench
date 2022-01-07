
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g12a_mdio_mux {int dummy; } ;


 int EINVAL ;


 struct g12a_mdio_mux* dev_get_drvdata (void*) ;
 int g12a_enable_external_mdio (struct g12a_mdio_mux*) ;
 int g12a_enable_internal_mdio (struct g12a_mdio_mux*) ;

__attribute__((used)) static int g12a_mdio_switch_fn(int current_child, int desired_child,
          void *data)
{
 struct g12a_mdio_mux *priv = dev_get_drvdata(data);

 if (current_child == desired_child)
  return 0;

 switch (desired_child) {
 case 129:
  return g12a_enable_external_mdio(priv);
 case 128:
  return g12a_enable_internal_mdio(priv);
 default:
  return -EINVAL;
 }
}
