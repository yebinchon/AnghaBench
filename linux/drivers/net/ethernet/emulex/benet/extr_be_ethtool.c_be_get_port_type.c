
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int interface_type; int cable_type; } ;
struct be_adapter {TYPE_1__ phy; } ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_OTHER ;
 int PORT_TP ;
 int QSFP_PLUS_CR4_CABLE ;
 int SFP_PLUS_COPPER_CABLE ;

__attribute__((used)) static u32 be_get_port_type(struct be_adapter *adapter)
{
 u32 port;

 switch (adapter->phy.interface_type) {
 case 134:
 case 133:
 case 129:
  port = PORT_TP;
  break;
 case 130:
  if (adapter->phy.cable_type & SFP_PLUS_COPPER_CABLE)
   port = PORT_DA;
  else
   port = PORT_FIBRE;
  break;
 case 132:
  if (adapter->phy.cable_type & QSFP_PLUS_CR4_CABLE)
   port = PORT_DA;
  else
   port = PORT_FIBRE;
  break;
 case 128:
 case 131:
  port = PORT_FIBRE;
  break;
 case 135:
  port = PORT_TP;
  break;
 default:
  port = PORT_OTHER;
 }

 return port;
}
