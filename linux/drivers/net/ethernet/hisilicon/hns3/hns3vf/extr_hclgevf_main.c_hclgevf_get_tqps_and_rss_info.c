
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int rss_size_max; int num_tqps; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static void hclgevf_get_tqps_and_rss_info(struct hnae3_handle *handle,
       u16 *alloc_tqps, u16 *max_rss_size)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 *alloc_tqps = hdev->num_tqps;
 *max_rss_size = hdev->rss_size_max;
}
