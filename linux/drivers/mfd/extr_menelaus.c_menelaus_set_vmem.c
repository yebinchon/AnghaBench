
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int menelaus_get_vtg_value (unsigned int,int ,int ) ;
 int menelaus_set_voltage (int *,unsigned int,int,int) ;
 int vmem_values ;
 int vmem_vtg ;

int menelaus_set_vmem(unsigned int mV)
{
 int val;

 if (mV == 0)
  return menelaus_set_voltage(&vmem_vtg, 0, 0, 0);

 val = menelaus_get_vtg_value(mV, vmem_values, ARRAY_SIZE(vmem_values));
 if (val < 0)
  return -EINVAL;
 return menelaus_set_voltage(&vmem_vtg, mV, val, 0x02);
}
