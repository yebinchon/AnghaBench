
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {size_t* prio_tc; size_t num_tc; } ;
struct hclge_dev {TYPE_1__ tm_info; } ;


 int EINVAL ;

__attribute__((used)) static int hclge_fill_pri_array(struct hclge_dev *hdev, u8 *pri, u8 pri_id)
{
 u8 tc;

 tc = hdev->tm_info.prio_tc[pri_id];

 if (tc >= hdev->tm_info.num_tc)
  return -EINVAL;
 pri[pri_id >> 1] |= tc << ((pri_id & 1) * 4);

 return 0;
}
