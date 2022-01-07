
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int portnum; int dev_rst_time; } ;


 int QLCNIC_CRB_DRV_SCRATCH ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int) ;
 int jiffies ;

__attribute__((used)) static void
qlcnic_idc_debug_info(struct qlcnic_adapter *adapter, u8 encoding)
{
 u32 val;

 val = adapter->portnum & 0xf;
 val |= encoding << 7;
 val |= (jiffies - adapter->dev_rst_time) << 8;

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_SCRATCH, val);
 adapter->dev_rst_time = jiffies;
}
