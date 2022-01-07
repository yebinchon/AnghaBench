
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int tx_flow_ctrl_creds; } ;
struct hbm_flow_control {int host_addr; } ;


 int cl_dbg (struct mei_device*,struct mei_cl*,char*,int ) ;
 int mei_hbm_add_single_tx_flow_ctrl_creds (struct mei_device*,struct hbm_flow_control*) ;
 struct mei_cl* mei_hbm_cl_find_by_cmd (struct mei_device*,struct hbm_flow_control*) ;

__attribute__((used)) static void mei_hbm_cl_tx_flow_ctrl_creds_res(struct mei_device *dev,
            struct hbm_flow_control *fctrl)
{
 struct mei_cl *cl;

 if (!fctrl->host_addr) {

  mei_hbm_add_single_tx_flow_ctrl_creds(dev, fctrl);
  return;
 }

 cl = mei_hbm_cl_find_by_cmd(dev, fctrl);
 if (cl) {
  cl->tx_flow_ctrl_creds++;
  cl_dbg(dev, cl, "flow control creds = %d.\n",
    cl->tx_flow_ctrl_creds);
 }
}
