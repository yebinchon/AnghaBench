
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ethtool_rxnfc {int flow_type; int data; } ;
struct ena_com_dev {int dummy; } ;
typedef enum ena_admin_flow_hash_proto { ____Placeholder_ena_admin_flow_hash_proto } ena_admin_flow_hash_proto ;





 int EINVAL ;
 int ENA_ADMIN_RSS_IP4 ;
 int ENA_ADMIN_RSS_IP6 ;
 int ENA_ADMIN_RSS_NOT_IP ;
 int ENA_ADMIN_RSS_TCP4 ;
 int ENA_ADMIN_RSS_TCP6 ;
 int ENA_ADMIN_RSS_UDP4 ;
 int ENA_ADMIN_RSS_UDP6 ;
 int EOPNOTSUPP ;
 int ena_com_get_hash_ctrl (struct ena_com_dev*,int,int *) ;
 int ena_flow_hash_to_flow_type (int ) ;

__attribute__((used)) static int ena_get_rss_hash(struct ena_com_dev *ena_dev,
       struct ethtool_rxnfc *cmd)
{
 enum ena_admin_flow_hash_proto proto;
 u16 hash_fields;
 int rc;

 cmd->data = 0;

 switch (cmd->flow_type) {
 case 131:
  proto = ENA_ADMIN_RSS_TCP4;
  break;
 case 129:
  proto = ENA_ADMIN_RSS_UDP4;
  break;
 case 130:
  proto = ENA_ADMIN_RSS_TCP6;
  break;
 case 128:
  proto = ENA_ADMIN_RSS_UDP6;
  break;
 case 134:
  proto = ENA_ADMIN_RSS_IP4;
  break;
 case 133:
  proto = ENA_ADMIN_RSS_IP6;
  break;
 case 135:
  proto = ENA_ADMIN_RSS_NOT_IP;
  break;
 case 139:
 case 137:
 case 138:
 case 136:
 case 132:
 case 140:
  return -EOPNOTSUPP;
 default:
  return -EINVAL;
 }

 rc = ena_com_get_hash_ctrl(ena_dev, proto, &hash_fields);
 if (rc)
  return rc;

 cmd->data = ena_flow_hash_to_flow_type(hash_fields);

 return 0;
}
