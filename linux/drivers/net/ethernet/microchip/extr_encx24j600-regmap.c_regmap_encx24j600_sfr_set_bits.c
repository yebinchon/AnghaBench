
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct encx24j600_context {int dummy; } ;


 int BFSCODE ;
 int BFSU ;
 int regmap_encx24j600_sfr_update (struct encx24j600_context*,int ,int *,int,int ,int ) ;

__attribute__((used)) static int regmap_encx24j600_sfr_set_bits(struct encx24j600_context *ctx,
       u8 reg, u8 val)
{
 return regmap_encx24j600_sfr_update(ctx, reg, &val, 1, BFSU, BFSCODE);
}
