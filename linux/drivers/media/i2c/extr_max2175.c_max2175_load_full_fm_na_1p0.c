
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int decim_ratio; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * full_fm_na_1p0 ;
 int max2175_write (struct max2175*,unsigned int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void max2175_load_full_fm_na_1p0(struct max2175 *ctx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(full_fm_na_1p0); i++)
  max2175_write(ctx, i + 1, full_fm_na_1p0[i]);

 usleep_range(5000, 5500);
 ctx->decim_ratio = 27;
}
