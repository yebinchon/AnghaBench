
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_rss_cfg {int rss_size; } ;
struct hclgevf_dev {struct hclgevf_rss_cfg rss_cfg; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static int hclgevf_get_tc_size(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;

 return rss_cfg->rss_size;
}
