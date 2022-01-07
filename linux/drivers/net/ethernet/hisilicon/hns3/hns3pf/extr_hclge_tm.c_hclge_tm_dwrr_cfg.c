
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int hclge_tm_pg_dwrr_cfg (struct hclge_dev*) ;
 int hclge_tm_pri_dwrr_cfg (struct hclge_dev*) ;

int hclge_tm_dwrr_cfg(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_tm_pg_dwrr_cfg(hdev);
 if (ret)
  return ret;

 return hclge_tm_pri_dwrr_cfg(hdev);
}
