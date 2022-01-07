
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct max2175 {int dummy; } ;
struct TYPE_3__ {int val; int idx; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* fmna1p0_map ;
 int max2175_write (struct max2175*,int ,int ) ;

__attribute__((used)) static void max2175_load_fmna_1p0(struct max2175 *ctx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(fmna1p0_map); i++)
  max2175_write(ctx, fmna1p0_map[i].idx, fmna1p0_map[i].val);
}
