
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_fd_rule {int location; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HCLGE_FD_STAGE_1 ;
 int dev_err (int *,char*) ;
 int hclge_config_action (struct hclge_dev*,int ,struct hclge_fd_rule*) ;
 int hclge_config_key (struct hclge_dev*,int ,struct hclge_fd_rule*) ;
 int hclge_fd_update_rule_list (struct hclge_dev*,struct hclge_fd_rule*,int ,int) ;

__attribute__((used)) static int hclge_fd_config_rule(struct hclge_dev *hdev,
    struct hclge_fd_rule *rule)
{
 int ret;

 if (!rule) {
  dev_err(&hdev->pdev->dev,
   "The flow director rule is NULL\n");
  return -EINVAL;
 }


 hclge_fd_update_rule_list(hdev, rule, rule->location, 1);

 ret = hclge_config_action(hdev, HCLGE_FD_STAGE_1, rule);
 if (ret)
  goto clear_rule;

 ret = hclge_config_key(hdev, HCLGE_FD_STAGE_1, rule);
 if (ret)
  goto clear_rule;

 return 0;

clear_rule:
 hclge_fd_update_rule_list(hdev, rule, rule->location, 0);
 return ret;
}
