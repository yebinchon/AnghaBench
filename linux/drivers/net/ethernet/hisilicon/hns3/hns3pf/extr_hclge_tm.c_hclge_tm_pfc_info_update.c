
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tc; scalar_t__ pfc_en; } ;
struct hclge_dev {int flag; TYPE_1__ tm_info; } ;


 int HCLGE_FLAG_DCB_ENABLE ;
 int hclge_pfc_info_init (struct hclge_dev*) ;

void hclge_tm_pfc_info_update(struct hclge_dev *hdev)
{



 if (hdev->tm_info.num_tc > 1 || hdev->tm_info.pfc_en)
  hdev->flag |= HCLGE_FLAG_DCB_ENABLE;
 else
  hdev->flag &= ~HCLGE_FLAG_DCB_ENABLE;

 hclge_pfc_info_init(hdev);
}
