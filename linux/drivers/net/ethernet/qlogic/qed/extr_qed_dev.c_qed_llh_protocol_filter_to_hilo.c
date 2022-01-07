
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qed_dev {int dummy; } ;
typedef enum qed_llh_prot_filter_type_t { ____Placeholder_qed_llh_prot_filter_type_t } qed_llh_prot_filter_type_t ;


 int DP_NOTICE (struct qed_dev*,char*,int) ;
 int EINVAL ;
__attribute__((used)) static int
qed_llh_protocol_filter_to_hilo(struct qed_dev *cdev,
    enum qed_llh_prot_filter_type_t type,
    u16 source_port_or_eth_type,
    u16 dest_port, u32 *p_high, u32 *p_low)
{
 *p_high = 0;
 *p_low = 0;

 switch (type) {
 case 134:
  *p_high = source_port_or_eth_type;
  break;
 case 131:
 case 128:
  *p_low = source_port_or_eth_type << 16;
  break;
 case 133:
 case 130:
  *p_low = dest_port;
  break;
 case 132:
 case 129:
  *p_low = (source_port_or_eth_type << 16) | dest_port;
  break;
 default:
  DP_NOTICE(cdev,
     "Non valid LLH protocol filter type %d\n", type);
  return -EINVAL;
 }

 return 0;
}
