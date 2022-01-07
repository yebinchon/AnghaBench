
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_hardware_context {int extend_lb_time; } ;
struct qlcnic_adapter {int netdev; struct qlcnic_hardware_context* ahw; } ;


 int QLC_83XX_LB_MSLEEP_COUNT ;
 int netdev_info (int ,char*,int) ;

__attribute__((used)) static void qlcnic_extend_lb_idc_cmpltn_wait(struct qlcnic_adapter *adapter,
          u32 *max_wait_count)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int temp;

 netdev_info(adapter->netdev, "Received loopback IDC time extend event for 0x%x seconds\n",
      ahw->extend_lb_time);
 temp = ahw->extend_lb_time * 1000;
 *max_wait_count += temp / QLC_83XX_LB_MSLEEP_COUNT;
 ahw->extend_lb_time = 0;
}
