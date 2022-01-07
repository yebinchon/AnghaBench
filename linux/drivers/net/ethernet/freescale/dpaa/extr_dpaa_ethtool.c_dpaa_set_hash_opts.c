
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;






 int EINVAL ;




 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int dpaa_set_hash (struct net_device*,int) ;

__attribute__((used)) static int dpaa_set_hash_opts(struct net_device *dev,
         struct ethtool_rxnfc *nfc)
{
 int ret = -EINVAL;


 if (nfc->data &
     ~(RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3))
  return -EINVAL;

 switch (nfc->flow_type) {
 case 131:
 case 130:
 case 129:
 case 128:
 case 135:
 case 134:
 case 133:
 case 132:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
  dpaa_set_hash(dev, !!nfc->data);
  ret = 0;
  break;
 default:
  break;
 }

 return ret;
}
