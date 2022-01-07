
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ AB8500_SYS_CTRL1_BLOCK ;
 scalar_t__ AB8500_SYS_CTRL2_BLOCK ;

__attribute__((used)) static inline bool valid_bank(u8 bank)
{
 return ((bank == AB8500_SYS_CTRL1_BLOCK) ||
  (bank == AB8500_SYS_CTRL2_BLOCK));
}
