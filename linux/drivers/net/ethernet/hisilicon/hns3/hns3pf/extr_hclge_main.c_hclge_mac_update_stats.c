
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int dev_err (int *,char*) ;
 int hclge_mac_query_reg_num (struct hclge_dev*,int *) ;
 int hclge_mac_update_stats_complete (struct hclge_dev*,int ) ;
 int hclge_mac_update_stats_defective (struct hclge_dev*) ;

__attribute__((used)) static int hclge_mac_update_stats(struct hclge_dev *hdev)
{
 u32 desc_num;
 int ret;

 ret = hclge_mac_query_reg_num(hdev, &desc_num);


 if (!ret)
  ret = hclge_mac_update_stats_complete(hdev, desc_num);
 else if (ret == -EOPNOTSUPP)
  ret = hclge_mac_update_stats_defective(hdev);
 else
  dev_err(&hdev->pdev->dev, "query mac reg num fail!\n");

 return ret;
}
