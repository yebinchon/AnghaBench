
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int netdev; } ;


 int DCB_CMD_CEE_GET ;
 int QLC_DCB_NUM_PARAM ;
 int RTM_GETDCB ;
 int dcbnl_cee_notify (int ,int ,int ,int ,int ) ;
 int qlcnic_dcb_map_cee_params (struct qlcnic_adapter*,int) ;

__attribute__((used)) static void qlcnic_dcb_data_cee_param_map(struct qlcnic_adapter *adapter)
{
 int i;

 for (i = 0; i < QLC_DCB_NUM_PARAM; i++)
  qlcnic_dcb_map_cee_params(adapter, i);

 dcbnl_cee_notify(adapter->netdev, RTM_GETDCB, DCB_CMD_CEE_GET, 0, 0);
}
