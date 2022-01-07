
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ofdpa_port {scalar_t__ internal_vlan_id; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ htons (int ) ;

__attribute__((used)) static __be16 ofdpa_port_vid_to_vlan(const struct ofdpa_port *ofdpa_port,
         u16 vid, bool *pop_vlan)
{
 __be16 vlan_id;

 if (pop_vlan)
  *pop_vlan = 0;
 vlan_id = htons(vid);
 if (!vlan_id) {
  vlan_id = ofdpa_port->internal_vlan_id;
  if (pop_vlan)
   *pop_vlan = 1;
 }

 return vlan_id;
}
