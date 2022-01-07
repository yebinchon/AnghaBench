
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int CEC_PHYS_ADDR_INVALID ;
 scalar_t__ WARN_ON (int) ;

u16 v4l2_phys_addr_for_input(u16 phys_addr, u8 input)
{

 if (WARN_ON(input == 0 || input > 0xf))
  return CEC_PHYS_ADDR_INVALID;

 if (phys_addr == 0)
  return input << 12;

 if ((phys_addr & 0x0fff) == 0)
  return phys_addr | (input << 8);

 if ((phys_addr & 0x00ff) == 0)
  return phys_addr | (input << 4);

 if ((phys_addr & 0x000f) == 0)
  return phys_addr | input;





 return CEC_PHYS_ADDR_INVALID;
}
