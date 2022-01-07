
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_resources { ____Placeholder_qed_resources } qed_resources ;
const char *qed_hw_get_resc_name(enum qed_resources res_id)
{
 switch (res_id) {
 case 138:
  return "L2_QUEUE";
 case 128:
  return "VPORT";
 case 131:
  return "RSS_ENG";
 case 135:
  return "PQ";
 case 132:
  return "RL";
 case 136:
  return "MAC";
 case 129:
  return "VLAN";
 case 134:
  return "RDMA_CNQ_RAM";
 case 139:
  return "ILT";
 case 137:
  return "LL2_QUEUE";
 case 140:
  return "CMDQS_CQS";
 case 133:
  return "RDMA_STATS_QUEUE";
 case 141:
  return "BDQ";
 case 130:
  return "SB";
 default:
  return "UNKNOWN_RESOURCE";
 }
}
