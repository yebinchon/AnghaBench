
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ofdpa_port {int dummy; } ;


 int OFDPA_OP_FLAG_REMOVE ;
 int htons (int ) ;
 int ofdpa_port_router_mac (struct ofdpa_port*,int ,int ) ;
 int ofdpa_port_vlan (struct ofdpa_port*,int ,int ) ;

__attribute__((used)) static int ofdpa_port_vlan_del(struct ofdpa_port *ofdpa_port,
          u16 vid, u16 flags)
{
 int err;

 err = ofdpa_port_router_mac(ofdpa_port, OFDPA_OP_FLAG_REMOVE,
        htons(vid));
 if (err)
  return err;

 return ofdpa_port_vlan(ofdpa_port, OFDPA_OP_FLAG_REMOVE,
          vid);
}
