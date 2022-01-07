
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_reserve {int dummy; } ;
struct sram_partition {int dummy; } ;
struct sram_dev {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int sram_check_protect_exec(struct sram_dev *sram,
       struct sram_reserve *block,
       struct sram_partition *part)
{
 return -ENODEV;
}
