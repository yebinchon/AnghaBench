
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int hclge_tm_lvl2_schd_mode_cfg (struct hclge_dev*) ;
 int hclge_tm_lvl34_schd_mode_cfg (struct hclge_dev*) ;

__attribute__((used)) static int hclge_tm_schd_mode_hw(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_tm_lvl2_schd_mode_cfg(hdev);
 if (ret)
  return ret;

 return hclge_tm_lvl34_schd_mode_cfg(hdev);
}
