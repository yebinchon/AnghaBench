
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static int sw_chk(struct ksz_hw *hw, u32 addr, u16 bits)
{
 u16 data;

 data = readw(hw->io + addr);
 return (data & bits) == bits;
}
