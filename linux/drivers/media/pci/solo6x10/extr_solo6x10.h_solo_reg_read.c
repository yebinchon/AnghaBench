
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_dev {scalar_t__ reg_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 solo_reg_read(struct solo_dev *solo_dev, int reg)
{
 return readl(solo_dev->reg_base + reg);
}
