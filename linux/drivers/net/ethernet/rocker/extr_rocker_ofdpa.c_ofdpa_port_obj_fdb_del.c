
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;
typedef int __be16 ;


 int EINVAL ;
 int OFDPA_OP_FLAG_REMOVE ;
 int ofdpa_port_fdb (struct ofdpa_port*,unsigned char const*,int ,int) ;
 int ofdpa_port_is_bridged (struct ofdpa_port*) ;
 int ofdpa_port_vid_to_vlan (struct ofdpa_port*,int ,int *) ;

__attribute__((used)) static int ofdpa_port_obj_fdb_del(struct rocker_port *rocker_port,
      u16 vid, const unsigned char *addr)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 __be16 vlan_id = ofdpa_port_vid_to_vlan(ofdpa_port, vid, ((void*)0));
 int flags = OFDPA_OP_FLAG_REMOVE;

 if (!ofdpa_port_is_bridged(ofdpa_port))
  return -EINVAL;

 return ofdpa_port_fdb(ofdpa_port, addr, vlan_id, flags);
}
