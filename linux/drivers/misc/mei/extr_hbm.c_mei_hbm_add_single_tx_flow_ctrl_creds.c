
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ single_recv_buf; } ;
struct mei_me_client {int tx_flow_ctrl_creds; TYPE_1__ props; } ;
struct mei_device {int dev; } ;
struct hbm_flow_control {int me_addr; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_err (int ,char*,int ) ;
 struct mei_me_client* mei_me_cl_by_id (struct mei_device*,int ) ;
 int mei_me_cl_put (struct mei_me_client*) ;

__attribute__((used)) static int mei_hbm_add_single_tx_flow_ctrl_creds(struct mei_device *dev,
       struct hbm_flow_control *fctrl)
{
 struct mei_me_client *me_cl;
 int rets;

 me_cl = mei_me_cl_by_id(dev, fctrl->me_addr);
 if (!me_cl) {
  dev_err(dev->dev, "no such me client %d\n", fctrl->me_addr);
  return -ENOENT;
 }

 if (WARN_ON(me_cl->props.single_recv_buf == 0)) {
  rets = -EINVAL;
  goto out;
 }

 me_cl->tx_flow_ctrl_creds++;
 dev_dbg(dev->dev, "recv flow ctrl msg ME %d (single) creds = %d.\n",
  fctrl->me_addr, me_cl->tx_flow_ctrl_creds);

 rets = 0;
out:
 mei_me_cl_put(me_cl);
 return rets;
}
