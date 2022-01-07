
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct TYPE_2__ {unsigned long hw_rst_done_cnt; } ;
struct hclgevf_dev {TYPE_1__ rst_stats; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static unsigned long hclgevf_ae_dev_reset_cnt(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 return hdev->rst_stats.hw_rst_done_cnt;
}
