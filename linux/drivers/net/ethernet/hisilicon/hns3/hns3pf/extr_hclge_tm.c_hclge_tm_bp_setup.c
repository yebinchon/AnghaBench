
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tc; } ;
struct hclge_dev {TYPE_1__ tm_info; } ;


 int hclge_bp_setup_hw (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_tm_bp_setup(struct hclge_dev *hdev)
{
 int ret = 0;
 int i;

 for (i = 0; i < hdev->tm_info.num_tc; i++) {
  ret = hclge_bp_setup_hw(hdev, i);
  if (ret)
   return ret;
 }

 return ret;
}
