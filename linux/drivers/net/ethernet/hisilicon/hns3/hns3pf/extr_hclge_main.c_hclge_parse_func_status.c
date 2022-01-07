
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_func_status_cmd {int pf_state; } ;
struct hclge_dev {int flag; } ;


 int EINVAL ;
 int HCLGE_FLAG_MAIN ;
 int HCLGE_PF_STATE_DONE ;
 int HCLGE_PF_STATE_MAIN ;

__attribute__((used)) static int hclge_parse_func_status(struct hclge_dev *hdev,
       struct hclge_func_status_cmd *status)
{
 if (!(status->pf_state & HCLGE_PF_STATE_DONE))
  return -EINVAL;


 if (status->pf_state & HCLGE_PF_STATE_MAIN)
  hdev->flag |= HCLGE_FLAG_MAIN;
 else
  hdev->flag &= ~HCLGE_FLAG_MAIN;

 return 0;
}
