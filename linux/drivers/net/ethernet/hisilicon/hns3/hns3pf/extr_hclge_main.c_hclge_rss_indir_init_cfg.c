
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int* rss_indirection_tbl; int alloc_rss_size; } ;
struct hclge_dev {int num_vmdq_vport; struct hclge_vport* vport; } ;


 int HCLGE_RSS_IND_TBL_SIZE ;

void hclge_rss_indir_init_cfg(struct hclge_dev *hdev)
{
 struct hclge_vport *vport = hdev->vport;
 int i, j;

 for (j = 0; j < hdev->num_vmdq_vport + 1; j++) {
  for (i = 0; i < HCLGE_RSS_IND_TBL_SIZE; i++)
   vport[j].rss_indirection_tbl[i] =
    i % vport[j].alloc_rss_size;
 }
}
