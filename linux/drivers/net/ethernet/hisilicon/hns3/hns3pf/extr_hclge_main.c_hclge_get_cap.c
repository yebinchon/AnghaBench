
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int hclge_query_function_status (struct hclge_dev*) ;
 int hclge_query_pf_resource (struct hclge_dev*) ;

__attribute__((used)) static int hclge_get_cap(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_query_function_status(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "query function status error %d.\n", ret);
  return ret;
 }


 ret = hclge_query_pf_resource(hdev);
 if (ret)
  dev_err(&hdev->pdev->dev, "query pf resource error %d.\n", ret);

 return ret;
}
