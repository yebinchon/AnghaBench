
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_ptys_connector_type { ____Placeholder_mlxsw_reg_ptys_connector_type } mlxsw_reg_ptys_connector_type ;
 int PORT_AUI ;
 int PORT_BNC ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_MII ;
 int PORT_NONE ;
 int PORT_OTHER ;
 int PORT_TP ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static u8
mlxsw_sp_port_connector_port(enum mlxsw_reg_ptys_connector_type connector_type)
{
 switch (connector_type) {
 case 128:
  return PORT_OTHER;
 case 131:
  return PORT_NONE;
 case 129:
  return PORT_TP;
 case 136:
  return PORT_AUI;
 case 135:
  return PORT_BNC;
 case 132:
  return PORT_MII;
 case 133:
  return PORT_FIBRE;
 case 134:
  return PORT_DA;
 case 130:
  return PORT_OTHER;
 default:
  WARN_ON_ONCE(1);
  return PORT_OTHER;
 }
}
