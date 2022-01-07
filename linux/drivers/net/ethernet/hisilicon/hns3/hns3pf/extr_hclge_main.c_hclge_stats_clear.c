
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int hw_stats; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void hclge_stats_clear(struct hclge_dev *hdev)
{
 memset(&hdev->hw_stats, 0, sizeof(hdev->hw_stats));
}
