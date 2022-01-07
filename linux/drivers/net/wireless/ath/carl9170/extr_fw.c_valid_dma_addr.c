
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ const AR9170_SRAM_OFFSET ;
 scalar_t__ const AR9170_SRAM_SIZE ;

__attribute__((used)) static bool valid_dma_addr(const u32 address)
{
 if (address >= AR9170_SRAM_OFFSET &&
     address < (AR9170_SRAM_OFFSET + AR9170_SRAM_SIZE))
  return 1;

 return 0;
}
