
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_desc {int * data; } ;


 int ARRAY_SIZE (int *) ;
 int REG_NUM_PER_LINE ;
 int REG_NUM_REMAIN_MASK ;
 int SEPARATOR_VALUE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_dfx_reg_fetch_data(struct hclge_desc *desc_src, int bd_num,
        void *data)
{
 int entries_per_desc, reg_num, separator_num, desc_index, index, i;
 struct hclge_desc *desc = desc_src;
 u32 *reg = data;

 entries_per_desc = ARRAY_SIZE(desc->data);
 reg_num = entries_per_desc * bd_num;
 separator_num = REG_NUM_PER_LINE - (reg_num & REG_NUM_REMAIN_MASK);
 for (i = 0; i < reg_num; i++) {
  index = i % entries_per_desc;
  desc_index = i / entries_per_desc;
  *reg++ = le32_to_cpu(desc[desc_index].data[index]);
 }
 for (i = 0; i < separator_num; i++)
  *reg++ = SEPARATOR_VALUE;

 return reg_num + separator_num;
}
