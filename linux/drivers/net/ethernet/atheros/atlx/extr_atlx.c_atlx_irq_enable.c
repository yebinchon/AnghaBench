
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atlx_adapter {int int_enabled; } ;


 int IMR_NORMAL_MASK ;
 int atlx_imr_set (struct atlx_adapter*,int ) ;

__attribute__((used)) static void atlx_irq_enable(struct atlx_adapter *adapter)
{
 atlx_imr_set(adapter, IMR_NORMAL_MASK);
 adapter->int_enabled = 1;
}
