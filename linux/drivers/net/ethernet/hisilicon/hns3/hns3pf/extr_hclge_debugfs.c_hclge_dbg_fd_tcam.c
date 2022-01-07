
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* rule_num; } ;
struct hclge_dev {TYPE_1__ fd_cfg; } ;


 int hclge_dbg_fd_tcam_read (struct hclge_dev*,int ,int,scalar_t__) ;

__attribute__((used)) static void hclge_dbg_fd_tcam(struct hclge_dev *hdev)
{
 u32 i;

 for (i = 0; i < hdev->fd_cfg.rule_num[0]; i++) {
  hclge_dbg_fd_tcam_read(hdev, 0, 1, i);
  hclge_dbg_fd_tcam_read(hdev, 0, 0, i);
 }
}
