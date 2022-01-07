
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union qed_mfw_tlv_data {int iscsi; int fcoe; int eth; int generic; } ;
struct qed_hwfn {struct qed_dev* cdev; } ;
struct TYPE_2__ {struct qed_common_cb_ops* common; } ;
struct qed_dev {int ops_cookie; TYPE_1__ protocol_ops; } ;
struct qed_common_cb_ops {int (* get_protocol_tlv_data ) (int ,int *) ;int get_generic_tlv_data; } ;
typedef enum qed_mfw_tlv_type { ____Placeholder_qed_mfw_tlv_type } qed_mfw_tlv_type ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;




 int qed_fill_generic_tlv_data (struct qed_dev*,int *) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int stub3 (int ,int *) ;

int qed_mfw_fill_tlv_data(struct qed_hwfn *hwfn, enum qed_mfw_tlv_type type,
     union qed_mfw_tlv_data *tlv_buf)
{
 struct qed_dev *cdev = hwfn->cdev;
 struct qed_common_cb_ops *ops;

 ops = cdev->protocol_ops.common;
 if (!ops || !ops->get_protocol_tlv_data || !ops->get_generic_tlv_data) {
  DP_NOTICE(hwfn, "Can't collect TLV management info\n");
  return -EINVAL;
 }

 switch (type) {
 case 129:
  qed_fill_generic_tlv_data(hwfn->cdev, &tlv_buf->generic);
  break;
 case 131:
  ops->get_protocol_tlv_data(cdev->ops_cookie, &tlv_buf->eth);
  break;
 case 130:
  ops->get_protocol_tlv_data(cdev->ops_cookie, &tlv_buf->fcoe);
  break;
 case 128:
  ops->get_protocol_tlv_data(cdev->ops_cookie, &tlv_buf->iscsi);
  break;
 default:
  break;
 }

 return 0;
}
