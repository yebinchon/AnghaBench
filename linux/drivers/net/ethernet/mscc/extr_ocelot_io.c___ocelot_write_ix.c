
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct ocelot {size_t** map; int * targets; } ;


 size_t REG_MASK ;
 size_t TARGET_OFFSET ;
 int WARN_ON (int) ;
 int regmap_write (int ,size_t,size_t) ;

void __ocelot_write_ix(struct ocelot *ocelot, u32 val, u32 reg, u32 offset)
{
 u16 target = reg >> TARGET_OFFSET;

 WARN_ON(!target);

 regmap_write(ocelot->targets[target],
       ocelot->map[target][reg & REG_MASK] + offset, val);
}
