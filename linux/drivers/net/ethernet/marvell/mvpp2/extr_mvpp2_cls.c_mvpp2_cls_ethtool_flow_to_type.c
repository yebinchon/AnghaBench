
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;

 int FLOW_EXT ;
 int FLOW_MAC_EXT ;
 int FLOW_RSS ;


 int MVPP22_FLOW_ETHERNET ;
 int MVPP22_FLOW_IP4 ;
 int MVPP22_FLOW_IP6 ;
 int MVPP22_FLOW_TCP4 ;
 int MVPP22_FLOW_TCP6 ;
 int MVPP22_FLOW_UDP4 ;
 int MVPP22_FLOW_UDP6 ;





__attribute__((used)) static int mvpp2_cls_ethtool_flow_to_type(int flow_type)
{
 switch (flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS)) {
 case 134:
  return MVPP22_FLOW_ETHERNET;
 case 131:
  return MVPP22_FLOW_TCP4;
 case 130:
  return MVPP22_FLOW_TCP6;
 case 129:
  return MVPP22_FLOW_UDP4;
 case 128:
  return MVPP22_FLOW_UDP6;
 case 133:
  return MVPP22_FLOW_IP4;
 case 132:
  return MVPP22_FLOW_IP6;
 default:
  return -EOPNOTSUPP;
 }
}
