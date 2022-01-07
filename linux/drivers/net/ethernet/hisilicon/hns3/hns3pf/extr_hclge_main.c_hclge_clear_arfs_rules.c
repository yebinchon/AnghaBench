
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ fd_active_type; } ;


 scalar_t__ HCLGE_FD_ARFS_ACTIVE ;
 int hclge_del_all_fd_entries (struct hnae3_handle*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static void hclge_clear_arfs_rules(struct hnae3_handle *handle)
{







}
