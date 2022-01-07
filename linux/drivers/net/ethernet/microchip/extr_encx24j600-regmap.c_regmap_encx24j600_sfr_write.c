
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct encx24j600_context {int dummy; } ;


 int WCRCODE ;
 int WCRU ;
 int regmap_encx24j600_sfr_update (struct encx24j600_context*,int ,int *,size_t,int ,int ) ;

__attribute__((used)) static int regmap_encx24j600_sfr_write(void *context, u8 reg, u8 *val,
           size_t len)
{
 struct encx24j600_context *ctx = context;

 return regmap_encx24j600_sfr_update(ctx, reg, val, len, WCRU, WCRCODE);
}
