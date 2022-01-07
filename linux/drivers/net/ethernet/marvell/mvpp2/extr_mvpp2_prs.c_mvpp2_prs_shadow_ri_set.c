
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {unsigned int ri_mask; unsigned int ri; } ;



__attribute__((used)) static void mvpp2_prs_shadow_ri_set(struct mvpp2 *priv, int index,
        unsigned int ri, unsigned int ri_mask)
{
 priv->prs_shadow[index].ri_mask = ri_mask;
 priv->prs_shadow[index].ri = ri;
}
