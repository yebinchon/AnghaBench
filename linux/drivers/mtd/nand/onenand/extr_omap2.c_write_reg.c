
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;
struct omap2_onenand {TYPE_1__ onenand; } ;


 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void write_reg(struct omap2_onenand *c, unsigned short value,
        int reg)
{
 writew(value, c->onenand.base + reg);
}
