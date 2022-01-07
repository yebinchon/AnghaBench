
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int hclge_tm_pg_shaper_cfg (struct hclge_dev*) ;
 int hclge_tm_port_shaper_cfg (struct hclge_dev*) ;
 int hclge_tm_pri_shaper_cfg (struct hclge_dev*) ;

__attribute__((used)) static int hclge_tm_shaper_cfg(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_tm_port_shaper_cfg(hdev);
 if (ret)
  return ret;

 ret = hclge_tm_pg_shaper_cfg(hdev);
 if (ret)
  return ret;

 return hclge_tm_pri_shaper_cfg(hdev);
}
