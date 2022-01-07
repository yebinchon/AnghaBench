
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int phys_addr_t ;


 unsigned int CSPR_BA ;

unsigned int convert_ifc_address(phys_addr_t addr_base)
{
 return addr_base & CSPR_BA;
}
