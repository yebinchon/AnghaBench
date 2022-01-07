
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qlcnic_adapter {int ahw; } ;


 int QLCNIC_CLR_OWNER ;
 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_HOST_MBX_CTRL ;
 int QLCNIC_SET_OWNER ;
 int QLCWRX (int ,int ,int ) ;

__attribute__((used)) static inline void qlcnic_83xx_signal_mbx_cmd(struct qlcnic_adapter *adapter,
           u8 issue_cmd)
{
 if (issue_cmd)
  QLCWRX(adapter->ahw, QLCNIC_HOST_MBX_CTRL, QLCNIC_SET_OWNER);
 else
  QLCWRX(adapter->ahw, QLCNIC_FW_MBX_CTRL, QLCNIC_CLR_OWNER);
}
