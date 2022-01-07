
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct drv_ctl_l2_ring {void* client_id; void* cid; } ;
struct TYPE_2__ {struct drv_ctl_l2_ring ring; } ;
struct drv_ctl_info {int cmd; TYPE_1__ data; } ;
struct cnic_local {struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int (* drv_ctl ) (int ,struct drv_ctl_info*) ;} ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;


 int DRV_CTL_START_L2_CMD ;
 int DRV_CTL_STOP_L2_CMD ;
 int memset (struct drv_ctl_info*,int ,int) ;
 int stub1 (int ,struct drv_ctl_info*) ;

__attribute__((used)) static void cnic_ring_ctl(struct cnic_dev *dev, u32 cid, u32 cl_id, int start)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 struct drv_ctl_info info;
 struct drv_ctl_l2_ring *ring = &info.data.ring;

 memset(&info, 0, sizeof(struct drv_ctl_info));
 if (start)
  info.cmd = DRV_CTL_START_L2_CMD;
 else
  info.cmd = DRV_CTL_STOP_L2_CMD;

 ring->cid = cid;
 ring->client_id = cl_id;
 ethdev->drv_ctl(dev->netdev, &info);
}
