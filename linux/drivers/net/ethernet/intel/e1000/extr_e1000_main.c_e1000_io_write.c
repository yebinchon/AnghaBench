
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int outl (int ,unsigned long) ;

void e1000_io_write(struct e1000_hw *hw, unsigned long port, u32 value)
{
 outl(value, port);
}
