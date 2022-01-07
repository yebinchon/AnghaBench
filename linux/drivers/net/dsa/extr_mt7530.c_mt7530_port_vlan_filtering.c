
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int MT7530_CPU_PORT ;
 int mt7530_port_set_vlan_aware (struct dsa_switch*,int) ;
 int mt7530_port_set_vlan_unaware (struct dsa_switch*,int) ;

__attribute__((used)) static int
mt7530_port_vlan_filtering(struct dsa_switch *ds, int port,
      bool vlan_filtering)
{
 if (vlan_filtering) {





  mt7530_port_set_vlan_aware(ds, port);
  mt7530_port_set_vlan_aware(ds, MT7530_CPU_PORT);
 } else {
  mt7530_port_set_vlan_unaware(ds, port);
 }

 return 0;
}
