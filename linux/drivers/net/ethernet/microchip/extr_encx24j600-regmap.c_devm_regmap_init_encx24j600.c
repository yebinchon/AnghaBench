
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct encx24j600_context {void* phymap; void* regmap; int mutex; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct encx24j600_context* lock_arg; } ;


 void* devm_regmap_init (struct device*,int *,struct encx24j600_context*,TYPE_1__*) ;
 int mutex_init (int *) ;
 TYPE_1__ phycfg ;
 int phymap_encx24j600 ;
 TYPE_1__ regcfg ;
 int regmap_encx24j600 ;

void devm_regmap_init_encx24j600(struct device *dev,
     struct encx24j600_context *ctx)
{
 mutex_init(&ctx->mutex);
 regcfg.lock_arg = ctx;
 ctx->regmap = devm_regmap_init(dev, &regmap_encx24j600, ctx, &regcfg);
 ctx->phymap = devm_regmap_init(dev, &phymap_encx24j600, ctx, &phycfg);
}
