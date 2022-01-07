
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int asic_slow_intr (int *) ;
 int fpga_slow_intr (int *) ;
 int t1_is_asic (int *) ;

int t1_slow_intr_handler(adapter_t *adapter)
{




 return asic_slow_intr(adapter);
}
