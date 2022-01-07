
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_2__ {int * rule_num; } ;
struct hclge_dev {TYPE_1__ fd_cfg; int hclge_fd_rule_num; } ;
struct ethtool_rxnfc {int data; int rule_cnt; } ;


 int EOPNOTSUPP ;
 size_t HCLGE_FD_STAGE_1 ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hnae3_dev_fd_supported (struct hclge_dev*) ;

__attribute__((used)) static int hclge_get_fd_rule_cnt(struct hnae3_handle *handle,
     struct ethtool_rxnfc *cmd)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (!hnae3_dev_fd_supported(hdev))
  return -EOPNOTSUPP;

 cmd->rule_cnt = hdev->hclge_fd_rule_num;
 cmd->data = hdev->fd_cfg.rule_num[HCLGE_FD_STAGE_1];

 return 0;
}
