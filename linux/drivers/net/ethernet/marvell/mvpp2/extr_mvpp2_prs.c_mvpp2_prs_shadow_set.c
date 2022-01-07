
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; int lu; } ;



__attribute__((used)) static void mvpp2_prs_shadow_set(struct mvpp2 *priv, int index, int lu)
{
 priv->prs_shadow[index].valid = 1;
 priv->prs_shadow[index].lu = lu;
}
