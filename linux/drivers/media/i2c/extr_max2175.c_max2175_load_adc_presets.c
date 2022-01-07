
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ** adc_presets ;
 int max2175_write (struct max2175*,int,int ) ;

__attribute__((used)) static void max2175_load_adc_presets(struct max2175 *ctx)
{
 unsigned int i, j;

 for (i = 0; i < ARRAY_SIZE(adc_presets); i++)
  for (j = 0; j < ARRAY_SIZE(adc_presets[0]); j++)
   max2175_write(ctx, 146 + j + i * 55, adc_presets[i][j]);
}
