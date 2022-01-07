
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;






 int CLASS_CODE_AH_ESP_IPV4 ;
 int CLASS_CODE_AH_ESP_IPV6 ;
 int CLASS_CODE_SCTP_IPV4 ;
 int CLASS_CODE_SCTP_IPV6 ;
 int CLASS_CODE_TCP_IPV4 ;
 int CLASS_CODE_TCP_IPV6 ;
 int CLASS_CODE_UDP_IPV4 ;
 int CLASS_CODE_UDP_IPV6 ;
__attribute__((used)) static int niu_ethflow_to_class(int flow_type, u64 *class)
{
 switch (flow_type) {
 case 131:
  *class = CLASS_CODE_TCP_IPV4;
  break;
 case 129:
  *class = CLASS_CODE_UDP_IPV4;
  break;
 case 139:
 case 137:
 case 135:
  *class = CLASS_CODE_AH_ESP_IPV4;
  break;
 case 133:
  *class = CLASS_CODE_SCTP_IPV4;
  break;
 case 130:
  *class = CLASS_CODE_TCP_IPV6;
  break;
 case 128:
  *class = CLASS_CODE_UDP_IPV6;
  break;
 case 138:
 case 136:
 case 134:
  *class = CLASS_CODE_AH_ESP_IPV6;
  break;
 case 132:
  *class = CLASS_CODE_SCTP_IPV6;
  break;
 default:
  return 0;
 }

 return 1;
}
