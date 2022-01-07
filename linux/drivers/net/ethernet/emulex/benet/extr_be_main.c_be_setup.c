
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {int fc_autoneg; } ;
struct be_adapter {int flags; TYPE_2__ phy; scalar_t__ num_vfs; int if_handle; int rx_fc; int tx_fc; TYPE_1__* pdev; int fw_ver; int cmd_privileges; } ;
struct TYPE_3__ {struct device dev; } ;


 scalar_t__ BE2_chip (struct be_adapter*) ;
 scalar_t__ BE3_chip (struct be_adapter*) ;
 int BE_FLAGS_SETUP_DONE ;
 int BEx_chip (struct be_adapter*) ;
 int IFLA_VF_LINK_STATE_AUTO ;
 int PORT_FWD_TYPE_PASSTHRU ;
 int be_alloc_sriov_res (struct be_adapter*) ;
 int be_clear (struct be_adapter*) ;
 int be_cmd_get_flow_control (struct be_adapter*,int *,int *) ;
 int be_cmd_get_fn_privileges (struct be_adapter*,int *,int ) ;
 int be_cmd_get_func_config (struct be_adapter*,int *) ;
 int be_cmd_get_fw_ver (struct be_adapter*) ;
 int be_cmd_get_phy_info (struct be_adapter*) ;
 int be_cmd_req_native_mode (struct be_adapter*) ;
 int be_cmd_set_features (struct be_adapter*) ;
 int be_cmd_set_flow_control (struct be_adapter*,int ,int ) ;
 int be_cmd_set_hsw_config (struct be_adapter*,int ,int ,int ,int ,int ) ;
 int be_cmd_set_logical_link_config (struct be_adapter*,int ,int ) ;
 int be_func_init (struct be_adapter*) ;
 int be_get_config (struct be_adapter*) ;
 int be_get_resources (struct be_adapter*) ;
 int be_if_create (struct be_adapter*) ;
 int be_mac_setup (struct be_adapter*) ;
 int be_msix_enable (struct be_adapter*) ;
 scalar_t__ be_pause_supported (struct be_adapter*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int be_schedule_worker (struct be_adapter*) ;
 int be_setup_init (struct be_adapter*) ;
 int be_setup_queues (struct be_adapter*) ;
 int be_vf_setup (struct be_adapter*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,...) ;
 int fw_major_num (int ) ;
 int lancer_chip (struct be_adapter*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int be_setup(struct be_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;
 int status;

 status = be_func_init(adapter);
 if (status)
  return status;

 be_setup_init(adapter);

 if (!lancer_chip(adapter))
  be_cmd_req_native_mode(adapter);




 if (!BEx_chip(adapter)) {
  status = be_cmd_get_func_config(adapter, ((void*)0));
  if (status)
   return status;
 }

 status = be_get_config(adapter);
 if (status)
  goto err;

 if (!BE2_chip(adapter) && be_physfn(adapter))
  be_alloc_sriov_res(adapter);

 status = be_get_resources(adapter);
 if (status)
  goto err;

 status = be_msix_enable(adapter);
 if (status)
  goto err;


 status = be_if_create(adapter);
 if (status)
  goto err;


 rtnl_lock();
 status = be_setup_queues(adapter);
 rtnl_unlock();
 if (status)
  goto err;

 be_cmd_get_fn_privileges(adapter, &adapter->cmd_privileges, 0);

 status = be_mac_setup(adapter);
 if (status)
  goto err;

 be_cmd_get_fw_ver(adapter);
 dev_info(dev, "FW version is %s\n", adapter->fw_ver);

 if (BE2_chip(adapter) && fw_major_num(adapter->fw_ver) < 4) {
  dev_err(dev, "Firmware on card is old(%s), IRQs may not work",
   adapter->fw_ver);
  dev_err(dev, "Please upgrade firmware to version >= 4.0\n");
 }

 status = be_cmd_set_flow_control(adapter, adapter->tx_fc,
      adapter->rx_fc);
 if (status)
  be_cmd_get_flow_control(adapter, &adapter->tx_fc,
     &adapter->rx_fc);

 dev_info(&adapter->pdev->dev, "HW Flow control - TX:%d RX:%d\n",
   adapter->tx_fc, adapter->rx_fc);

 if (be_physfn(adapter))
  be_cmd_set_logical_link_config(adapter,
            IFLA_VF_LINK_STATE_AUTO, 0);






 if (BE3_chip(adapter))
  be_cmd_set_hsw_config(adapter, 0, 0, adapter->if_handle,
          PORT_FWD_TYPE_PASSTHRU, 0);

 if (adapter->num_vfs)
  be_vf_setup(adapter);

 status = be_cmd_get_phy_info(adapter);
 if (!status && be_pause_supported(adapter))
  adapter->phy.fc_autoneg = 1;

 if (be_physfn(adapter) && !lancer_chip(adapter))
  be_cmd_set_features(adapter);

 be_schedule_worker(adapter);
 adapter->flags |= BE_FLAGS_SETUP_DONE;
 return 0;
err:
 be_clear(adapter);
 return status;
}
