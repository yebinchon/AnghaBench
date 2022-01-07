
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {int alloc_tqps; struct hclge_dev* back; } ;
struct hclge_dev {int rss_size_max; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static void hclge_get_tqps_and_rss_info(struct hnae3_handle *handle,
     u16 *alloc_tqps, u16 *max_rss_size)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 *alloc_tqps = vport->alloc_tqps;
 *max_rss_size = hdev->rss_size_max;
}
