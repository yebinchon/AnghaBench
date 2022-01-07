
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hclge_dev {int hw_tc_map; } ;


 int BIT (unsigned int) ;
 unsigned int HCLGE_MAX_TC_NUM ;

__attribute__((used)) static u32 hclge_get_tc_num(struct hclge_dev *hdev)
{
 unsigned int i;
 u32 cnt = 0;

 for (i = 0; i < HCLGE_MAX_TC_NUM; i++)
  if (hdev->hw_tc_map & BIT(i))
   cnt++;
 return cnt;
}
