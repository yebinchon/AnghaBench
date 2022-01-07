
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netxen_adapter {int dummy; } ;


 int NETXEN_INTR_MODE_REG ;
 int NXRD32 (struct netxen_adapter*,int ) ;

__attribute__((used)) static inline u32 netxen_get_interrupt_mode(struct netxen_adapter *adapter)
{
 return NXRD32(adapter, NETXEN_INTR_MODE_REG);
}
