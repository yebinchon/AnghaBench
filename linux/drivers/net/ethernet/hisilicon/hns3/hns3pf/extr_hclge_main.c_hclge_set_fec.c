
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mac {int fec_ability; int user_fec_mode; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int dev; } ;


 int BIT (int ) ;
 int EINVAL ;
 int HNAE3_FEC_USER_DEF ;
 int dev_err (int *,char*) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_fec_hw (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_set_fec(struct hnae3_handle *handle, u32 fec_mode)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 struct hclge_mac *mac = &hdev->hw.mac;
 int ret;

 if (fec_mode && !(mac->fec_ability & fec_mode)) {
  dev_err(&hdev->pdev->dev, "unsupported fec mode\n");
  return -EINVAL;
 }

 ret = hclge_set_fec_hw(hdev, fec_mode);
 if (ret)
  return ret;

 mac->user_fec_mode = fec_mode | BIT(HNAE3_FEC_USER_DEF);
 return 0;
}
