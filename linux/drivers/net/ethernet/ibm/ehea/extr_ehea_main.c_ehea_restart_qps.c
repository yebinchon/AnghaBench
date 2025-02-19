
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct hcp_modify_qp_cb0 {int qp_ctl_reg; } ;
struct ehea_qp {int fw_handle; } ;
struct TYPE_2__ {int index; } ;
struct ehea_port_res {TYPE_1__ rq1_skba; struct ehea_qp* qp; } ;
struct ehea_port {int num_def_qps; struct ehea_port_res* port_res; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int handle; } ;


 int EHEA_BMASK_SET (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_QPCB0_ALL ;
 int H_QPCB0_QP_CTL_REG ;
 int H_QP_CR_ENABLED ;
 int H_QP_CR_RES_STATE ;
 scalar_t__ H_SUCCESS ;
 int ehea_gen_smrs (struct ehea_port_res*) ;
 scalar_t__ ehea_h_modify_ehea_qp (int ,int ,int ,int ,struct hcp_modify_qp_cb0*,scalar_t__*,scalar_t__*,int *,int *) ;
 scalar_t__ ehea_h_query_ehea_qp (int ,int ,int ,int ,struct hcp_modify_qp_cb0*) ;
 int ehea_refill_rq1 (struct ehea_port_res*,int ,int ) ;
 int ehea_refill_rq2 (struct ehea_port_res*,int ) ;
 int ehea_refill_rq3 (struct ehea_port_res*,int ) ;
 int ehea_update_rqs (struct ehea_qp*,struct ehea_port_res*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ehea_restart_qps(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);
 struct ehea_adapter *adapter = port->adapter;
 int ret = 0;
 int i;

 struct hcp_modify_qp_cb0 *cb0;
 u64 hret;
 u64 dummy64 = 0;
 u16 dummy16 = 0;

 cb0 = (void *)get_zeroed_page(GFP_KERNEL);
 if (!cb0) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < (port->num_def_qps); i++) {
  struct ehea_port_res *pr = &port->port_res[i];
  struct ehea_qp *qp = pr->qp;

  ret = ehea_gen_smrs(pr);
  if (ret) {
   netdev_err(dev, "creation of shared memory regions failed\n");
   goto out;
  }

  ehea_update_rqs(qp, pr);


  hret = ehea_h_query_ehea_qp(adapter->handle, 0, qp->fw_handle,
         EHEA_BMASK_SET(H_QPCB0_ALL, 0xFFFF),
         cb0);
  if (hret != H_SUCCESS) {
   netdev_err(dev, "query_ehea_qp failed (1)\n");
   goto out;
  }

  cb0->qp_ctl_reg = (cb0->qp_ctl_reg & H_QP_CR_RES_STATE) << 8;
  cb0->qp_ctl_reg |= H_QP_CR_ENABLED;

  hret = ehea_h_modify_ehea_qp(adapter->handle, 0, qp->fw_handle,
          EHEA_BMASK_SET(H_QPCB0_QP_CTL_REG,
           1), cb0, &dummy64,
          &dummy64, &dummy16, &dummy16);
  if (hret != H_SUCCESS) {
   netdev_err(dev, "modify_ehea_qp failed (1)\n");
   goto out;
  }

  hret = ehea_h_query_ehea_qp(adapter->handle, 0, qp->fw_handle,
         EHEA_BMASK_SET(H_QPCB0_ALL, 0xFFFF),
         cb0);
  if (hret != H_SUCCESS) {
   netdev_err(dev, "query_ehea_qp failed (2)\n");
   goto out;
  }


  ehea_refill_rq1(pr, pr->rq1_skba.index, 0);
  ehea_refill_rq2(pr, 0);
  ehea_refill_rq3(pr, 0);
 }
out:
 free_page((unsigned long)cb0);

 return ret;
}
