
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae3_knic_private_info {int num_tqps; } ;
struct hclge_dev {int num_msi_used; int hw; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int HCLGE_RING_INT_REG_OFFSET ;
 int HCLGE_RING_REG_OFFSET ;
 int MAX_SEPARATE_NUM ;
 int REG_NUM_REMAIN_MASK ;
 void* SEPARATOR_VALUE ;
 scalar_t__* cmdq_reg_addr_list ;
 scalar_t__* common_reg_addr_list ;
 void* hclge_read_dev (int *,scalar_t__) ;
 scalar_t__* ring_reg_addr_list ;
 scalar_t__* tqp_intr_reg_addr_list ;

__attribute__((used)) static int hclge_fetch_pf_reg(struct hclge_dev *hdev, void *data,
         struct hnae3_knic_private_info *kinfo)
{



 int i, j, reg_num, separator_num;
 int data_num_sum;
 u32 *reg = data;


 reg_num = ARRAY_SIZE(cmdq_reg_addr_list);
 separator_num = MAX_SEPARATE_NUM - (reg_num & REG_NUM_REMAIN_MASK);
 for (i = 0; i < reg_num; i++)
  *reg++ = hclge_read_dev(&hdev->hw, cmdq_reg_addr_list[i]);
 for (i = 0; i < separator_num; i++)
  *reg++ = SEPARATOR_VALUE;
 data_num_sum = reg_num + separator_num;

 reg_num = ARRAY_SIZE(common_reg_addr_list);
 separator_num = MAX_SEPARATE_NUM - (reg_num & REG_NUM_REMAIN_MASK);
 for (i = 0; i < reg_num; i++)
  *reg++ = hclge_read_dev(&hdev->hw, common_reg_addr_list[i]);
 for (i = 0; i < separator_num; i++)
  *reg++ = SEPARATOR_VALUE;
 data_num_sum += reg_num + separator_num;

 reg_num = ARRAY_SIZE(ring_reg_addr_list);
 separator_num = MAX_SEPARATE_NUM - (reg_num & REG_NUM_REMAIN_MASK);
 for (j = 0; j < kinfo->num_tqps; j++) {
  for (i = 0; i < reg_num; i++)
   *reg++ = hclge_read_dev(&hdev->hw,
      ring_reg_addr_list[i] +
      0x200 * j);
  for (i = 0; i < separator_num; i++)
   *reg++ = SEPARATOR_VALUE;
 }
 data_num_sum += (reg_num + separator_num) * kinfo->num_tqps;

 reg_num = ARRAY_SIZE(tqp_intr_reg_addr_list);
 separator_num = MAX_SEPARATE_NUM - (reg_num & REG_NUM_REMAIN_MASK);
 for (j = 0; j < hdev->num_msi_used - 1; j++) {
  for (i = 0; i < reg_num; i++)
   *reg++ = hclge_read_dev(&hdev->hw,
      tqp_intr_reg_addr_list[i] +
      0x4 * j);
  for (i = 0; i < separator_num; i++)
   *reg++ = SEPARATOR_VALUE;
 }
 data_num_sum += (reg_num + separator_num) * (hdev->num_msi_used - 1);

 return data_num_sum;
}
