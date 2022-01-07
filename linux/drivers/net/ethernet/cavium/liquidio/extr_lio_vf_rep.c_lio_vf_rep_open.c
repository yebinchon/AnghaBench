
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device {TYPE_2__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct lio_vf_rep_req {TYPE_1__ rep_state; int ifidx; int req_type; } ;
struct lio_vf_rep_desc {int ifstate; int ifidx; struct octeon_device* oct; } ;
typedef int rep_cfg ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int LIO_IFSTATE_RUNNING ;
 int LIO_VF_REP_REQ_STATE ;
 int LIO_VF_REP_STATE_UP ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int dev_err (int *,char*,int) ;
 int lio_vf_rep_send_soft_command (struct octeon_device*,struct lio_vf_rep_req*,int,int *,int ) ;
 int memset (struct lio_vf_rep_req*,int ,int) ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int
lio_vf_rep_open(struct net_device *ndev)
{
 struct lio_vf_rep_desc *vf_rep = netdev_priv(ndev);
 struct lio_vf_rep_req rep_cfg;
 struct octeon_device *oct;
 int ret;

 oct = vf_rep->oct;

 memset(&rep_cfg, 0, sizeof(rep_cfg));
 rep_cfg.req_type = LIO_VF_REP_REQ_STATE;
 rep_cfg.ifidx = vf_rep->ifidx;
 rep_cfg.rep_state.state = LIO_VF_REP_STATE_UP;

 ret = lio_vf_rep_send_soft_command(oct, &rep_cfg,
        sizeof(rep_cfg), ((void*)0), 0);

 if (ret) {
  dev_err(&oct->pci_dev->dev,
   "VF_REP open failed with err %d\n", ret);
  return -EIO;
 }

 atomic_set(&vf_rep->ifstate, (atomic_read(&vf_rep->ifstate) |
          LIO_IFSTATE_RUNNING));

 netif_carrier_on(ndev);
 netif_start_queue(ndev);

 return 0;
}
