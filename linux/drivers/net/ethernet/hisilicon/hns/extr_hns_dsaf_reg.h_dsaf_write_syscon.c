
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static inline void dsaf_write_syscon(struct regmap *base, u32 reg, u32 value)
{
 regmap_write(base, reg, value);
}
