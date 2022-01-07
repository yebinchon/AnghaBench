
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ofdpa_port {int dummy; } ;
typedef int __be16 ;


 int ntohs (int ) ;
 scalar_t__ ofdpa_vlan_id_is_internal (int ) ;

__attribute__((used)) static u16 ofdpa_port_vlan_to_vid(const struct ofdpa_port *ofdpa_port,
      __be16 vlan_id)
{
 if (ofdpa_vlan_id_is_internal(vlan_id))
  return 0;

 return ntohs(vlan_id);
}
