
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclge_vport {int mps; scalar_t__ vport_id; struct hclge_dev* back; } ;
struct hclge_dev {int mps; int num_alloc_vport; int vport_lock; TYPE_2__* pdev; TYPE_1__* vport; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int mps; } ;


 int EINVAL ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int HCLGE_MAC_DEFAULT_FRAME ;
 int HCLGE_MAC_MAX_FRAME ;
 int HCLGE_MAC_MIN_FRAME ;
 int HNAE3_DOWN_CLIENT ;
 int HNAE3_UP_CLIENT ;
 int VLAN_HLEN ;
 int dev_err (int *,char*,int) ;
 int hclge_buffer_alloc (struct hclge_dev*) ;
 int hclge_notify_client (struct hclge_dev*,int ) ;
 int hclge_set_mac_mtu (struct hclge_dev*,int) ;
 int max (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hclge_set_vport_mtu(struct hclge_vport *vport, int new_mtu)
{
 struct hclge_dev *hdev = vport->back;
 int i, max_frm_size, ret;

 max_frm_size = new_mtu + ETH_HLEN + ETH_FCS_LEN + 2 * VLAN_HLEN;
 if (max_frm_size < HCLGE_MAC_MIN_FRAME ||
     max_frm_size > HCLGE_MAC_MAX_FRAME)
  return -EINVAL;

 max_frm_size = max(max_frm_size, HCLGE_MAC_DEFAULT_FRAME);
 mutex_lock(&hdev->vport_lock);

 if (vport->vport_id && max_frm_size > hdev->mps) {
  mutex_unlock(&hdev->vport_lock);
  return -EINVAL;
 } else if (vport->vport_id) {
  vport->mps = max_frm_size;
  mutex_unlock(&hdev->vport_lock);
  return 0;
 }


 for (i = 1; i < hdev->num_alloc_vport; i++)
  if (max_frm_size < hdev->vport[i].mps) {
   mutex_unlock(&hdev->vport_lock);
   return -EINVAL;
  }

 hclge_notify_client(hdev, HNAE3_DOWN_CLIENT);

 ret = hclge_set_mac_mtu(hdev, max_frm_size);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Change mtu fail, ret =%d\n", ret);
  goto out;
 }

 hdev->mps = max_frm_size;
 vport->mps = max_frm_size;

 ret = hclge_buffer_alloc(hdev);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Allocate buffer fail, ret =%d\n", ret);

out:
 hclge_notify_client(hdev, HNAE3_UP_CLIENT);
 mutex_unlock(&hdev->vport_lock);
 return ret;
}
