
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {scalar_t__ need_fw_reset; } ;


 int qlcnic_can_start_firmware (struct qlcnic_adapter*) ;
 int qlcnic_check_npar_opertional (struct qlcnic_adapter*) ;
 int qlcnic_check_options (struct qlcnic_adapter*) ;
 int qlcnic_initialize_nic (struct qlcnic_adapter*) ;
 int qlcnic_set_eswitch_port_config (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnicvf_start_firmware(struct qlcnic_adapter *adapter)
{
 int err;

 err = qlcnic_can_start_firmware(adapter);
 if (err)
  return err;

 err = qlcnic_check_npar_opertional(adapter);
 if (err)
  return err;

 err = qlcnic_initialize_nic(adapter);
 if (err)
  return err;

 qlcnic_check_options(adapter);

 err = qlcnic_set_eswitch_port_config(adapter);
 if (err)
  return err;

 adapter->need_fw_reset = 0;

 return err;
}
