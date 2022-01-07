
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int dummy; } ;
struct TYPE_2__ {unsigned int num_ports; } ;
struct bcm_sf2_priv {TYPE_1__ hw_params; } ;


 int b53_configure_vlan (struct dsa_switch*) ;
 int bcm_sf2_enable_acb (struct dsa_switch*) ;
 int bcm_sf2_imp_setup (struct dsa_switch*,unsigned int) ;
 int bcm_sf2_port_disable (struct dsa_switch*,unsigned int) ;
 int bcm_sf2_port_setup (struct dsa_switch*,unsigned int,int *) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,unsigned int) ;
 scalar_t__ dsa_is_user_port (struct dsa_switch*,unsigned int) ;

__attribute__((used)) static int bcm_sf2_sw_setup(struct dsa_switch *ds)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 unsigned int port;


 for (port = 0; port < priv->hw_params.num_ports; port++) {

  if (dsa_is_user_port(ds, port))
   bcm_sf2_port_setup(ds, port, ((void*)0));
  else if (dsa_is_cpu_port(ds, port))
   bcm_sf2_imp_setup(ds, port);
  else
   bcm_sf2_port_disable(ds, port);
 }

 b53_configure_vlan(ds);
 bcm_sf2_enable_acb(ds);

 return 0;
}
