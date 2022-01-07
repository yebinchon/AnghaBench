
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int hclge_buffer_alloc (struct hclge_dev*) ;
 int hclge_pause_setup_hw (struct hclge_dev*,int) ;
 int hclge_rss_indir_init_cfg (struct hclge_dev*) ;
 int hclge_rss_init_hw (struct hclge_dev*) ;
 int hclge_tm_schd_setup_hw (struct hclge_dev*) ;

__attribute__((used)) static int hclge_map_update(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_tm_schd_setup_hw(hdev);
 if (ret)
  return ret;

 ret = hclge_pause_setup_hw(hdev, 0);
 if (ret)
  return ret;

 ret = hclge_buffer_alloc(hdev);
 if (ret)
  return ret;

 hclge_rss_indir_init_cfg(hdev);

 return hclge_rss_init_hw(hdev);
}
