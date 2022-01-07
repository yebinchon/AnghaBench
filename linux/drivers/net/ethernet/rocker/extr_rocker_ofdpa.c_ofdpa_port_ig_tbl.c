
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ofdpa_port {int dev; } ;
typedef enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;


 int ROCKER_OF_DPA_TABLE_ID_VLAN ;
 int netdev_err (int ,char*,int) ;
 int ofdpa_flow_tbl_ig_port (struct ofdpa_port*,int,int,int,int) ;

__attribute__((used)) static int ofdpa_port_ig_tbl(struct ofdpa_port *ofdpa_port, int flags)
{
 enum rocker_of_dpa_table_id goto_tbl;
 u32 in_pport;
 u32 in_pport_mask;
 int err;





 in_pport = 0;
 in_pport_mask = 0xffff0000;
 goto_tbl = ROCKER_OF_DPA_TABLE_ID_VLAN;

 err = ofdpa_flow_tbl_ig_port(ofdpa_port, flags,
         in_pport, in_pport_mask,
         goto_tbl);
 if (err)
  netdev_err(ofdpa_port->dev, "Error (%d) ingress port table entry\n", err);

 return err;
}
