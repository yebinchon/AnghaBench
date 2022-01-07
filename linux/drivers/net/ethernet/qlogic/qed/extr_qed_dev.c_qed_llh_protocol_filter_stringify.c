
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qed_dev {int dummy; } ;
typedef enum qed_llh_prot_filter_type_t { ____Placeholder_qed_llh_prot_filter_type_t } qed_llh_prot_filter_type_t ;


 int DP_NOTICE (struct qed_dev*,char*,int) ;
 int EINVAL ;







 int snprintf (int *,size_t,char*,int,...) ;

__attribute__((used)) static int
qed_llh_protocol_filter_stringify(struct qed_dev *cdev,
      enum qed_llh_prot_filter_type_t type,
      u16 source_port_or_eth_type,
      u16 dest_port, u8 *str, size_t str_len)
{
 switch (type) {
 case 134:
  snprintf(str, str_len, "Ethertype 0x%04x",
    source_port_or_eth_type);
  break;
 case 131:
  snprintf(str, str_len, "TCP src port 0x%04x",
    source_port_or_eth_type);
  break;
 case 128:
  snprintf(str, str_len, "UDP src port 0x%04x",
    source_port_or_eth_type);
  break;
 case 133:
  snprintf(str, str_len, "TCP dst port 0x%04x", dest_port);
  break;
 case 130:
  snprintf(str, str_len, "UDP dst port 0x%04x", dest_port);
  break;
 case 132:
  snprintf(str, str_len, "TCP src/dst ports 0x%04x/0x%04x",
    source_port_or_eth_type, dest_port);
  break;
 case 129:
  snprintf(str, str_len, "UDP src/dst ports 0x%04x/0x%04x",
    source_port_or_eth_type, dest_port);
  break;
 default:
  DP_NOTICE(cdev,
     "Non valid LLH protocol filter type %d\n", type);
  return -EINVAL;
 }

 return 0;
}
