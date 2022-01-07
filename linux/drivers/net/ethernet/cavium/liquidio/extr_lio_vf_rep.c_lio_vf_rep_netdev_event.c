
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device {TYPE_2__* pci_dev; } ;
struct notifier_block {int dummy; } ;
struct net_device {int name; int * netdev_ops; } ;
struct TYPE_3__ {int name; } ;
struct lio_vf_rep_req {TYPE_1__ rep_name; int ifidx; int req_type; } ;
struct lio_vf_rep_desc {int ifidx; struct octeon_device* oct; } ;
typedef int rep_cfg ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ LIO_IF_NAME_SIZE ;
 int LIO_VF_REP_REQ_DEVNAME ;


 int NOTIFY_DONE ;
 int dev_err (int *,char*,int) ;
 int lio_vf_rep_ndev_ops ;
 int lio_vf_rep_send_soft_command (struct octeon_device*,struct lio_vf_rep_req*,int,int *,int ) ;
 int memset (struct lio_vf_rep_req*,int ,int) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;
 scalar_t__ strlen (int ) ;
 int strncpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int
lio_vf_rep_netdev_event(struct notifier_block *nb,
   unsigned long event, void *ptr)
{
 struct net_device *ndev = netdev_notifier_info_to_dev(ptr);
 struct lio_vf_rep_desc *vf_rep;
 struct lio_vf_rep_req rep_cfg;
 struct octeon_device *oct;
 int ret;

 switch (event) {
 case 128:
 case 129:
  break;

 default:
  return NOTIFY_DONE;
 }

 if (ndev->netdev_ops != &lio_vf_rep_ndev_ops)
  return NOTIFY_DONE;

 vf_rep = netdev_priv(ndev);
 oct = vf_rep->oct;

 if (strlen(ndev->name) > LIO_IF_NAME_SIZE) {
  dev_err(&oct->pci_dev->dev,
   "Device name change sync failed as the size is > %d\n",
   LIO_IF_NAME_SIZE);
  return NOTIFY_DONE;
 }

 memset(&rep_cfg, 0, sizeof(rep_cfg));
 rep_cfg.req_type = LIO_VF_REP_REQ_DEVNAME;
 rep_cfg.ifidx = vf_rep->ifidx;
 strncpy(rep_cfg.rep_name.name, ndev->name, LIO_IF_NAME_SIZE);

 ret = lio_vf_rep_send_soft_command(oct, &rep_cfg,
        sizeof(rep_cfg), ((void*)0), 0);
 if (ret)
  dev_err(&oct->pci_dev->dev,
   "vf_rep netdev name change failed with err %d\n", ret);

 return NOTIFY_DONE;
}
