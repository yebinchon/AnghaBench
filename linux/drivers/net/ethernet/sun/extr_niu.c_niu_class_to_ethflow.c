
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int AH_V4_FLOW ;
 int AH_V6_FLOW ;
 int EINVAL ;
 int IP_USER_FLOW ;
 int SCTP_V4_FLOW ;
 int SCTP_V6_FLOW ;
 int TCP_V4_FLOW ;
 int TCP_V6_FLOW ;
 int UDP_V4_FLOW ;
 int UDP_V6_FLOW ;

__attribute__((used)) static int niu_class_to_ethflow(u64 class, int *flow_type)
{
 switch (class) {
 case 135:
  *flow_type = TCP_V4_FLOW;
  break;
 case 133:
  *flow_type = UDP_V4_FLOW;
  break;
 case 139:
  *flow_type = AH_V4_FLOW;
  break;
 case 137:
  *flow_type = SCTP_V4_FLOW;
  break;
 case 134:
  *flow_type = TCP_V6_FLOW;
  break;
 case 132:
  *flow_type = UDP_V6_FLOW;
  break;
 case 138:
  *flow_type = AH_V6_FLOW;
  break;
 case 136:
  *flow_type = SCTP_V6_FLOW;
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  *flow_type = IP_USER_FLOW;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
