
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vmxnet3_adapter {int dummy; } ;


 int VMXNET3_READ_BAR1_REG (struct vmxnet3_adapter*,int ) ;
 int VMXNET3_REG_MACH ;
 int VMXNET3_REG_MACL ;

__attribute__((used)) static void
vmxnet3_read_mac_addr(struct vmxnet3_adapter *adapter, u8 *mac)
{
 u32 tmp;

 tmp = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_MACL);
 *(u32 *)mac = tmp;

 tmp = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_MACH);
 mac[4] = tmp & 0xff;
 mac[5] = (tmp >> 8) & 0xff;
}
