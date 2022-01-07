
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int hclge_pfc_info_init (struct hclge_dev*) ;
 int hclge_tm_pg_info_init (struct hclge_dev*) ;
 int hclge_tm_tc_info_init (struct hclge_dev*) ;
 int hclge_tm_vport_info_update (struct hclge_dev*) ;

__attribute__((used)) static void hclge_tm_schd_info_init(struct hclge_dev *hdev)
{
 hclge_tm_pg_info_init(hdev);

 hclge_tm_tc_info_init(hdev);

 hclge_tm_vport_info_update(hdev);

 hclge_pfc_info_init(hdev);
}
