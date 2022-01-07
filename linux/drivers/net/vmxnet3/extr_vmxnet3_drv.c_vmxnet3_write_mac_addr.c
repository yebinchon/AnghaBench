
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vmxnet3_adapter {int dummy; } ;


 int VMXNET3_REG_MACH ;
 int VMXNET3_REG_MACL ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int) ;

__attribute__((used)) static void
vmxnet3_write_mac_addr(struct vmxnet3_adapter *adapter, u8 *mac)
{
 u32 tmp;

 tmp = *(u32 *)mac;
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_MACL, tmp);

 tmp = (mac[5] << 8) | mac[4];
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_MACH, tmp);
}
