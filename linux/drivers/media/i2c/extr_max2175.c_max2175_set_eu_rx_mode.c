
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max2175 {int master; } ;




 int max2175_load_dab_1p2 (struct max2175*) ;
 int max2175_load_fmeu_1p2 (struct max2175*) ;
 int max2175_write_bit (struct max2175*,int,int,int) ;

__attribute__((used)) static void max2175_set_eu_rx_mode(struct max2175 *ctx, u32 rx_mode)
{
 switch (rx_mode) {
 case 128:
  max2175_load_fmeu_1p2(ctx);
  break;

 case 129:
  max2175_load_dab_1p2(ctx);
  break;
 }

 if (!ctx->master)
  max2175_write_bit(ctx, 30, 7, 1);
}
