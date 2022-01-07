
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_core {TYPE_1__* client; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct regmap* devm_regmap_init (int *,int *,struct si476x_core*,int *) ;
 int si476x_regmap_config ;

struct regmap *devm_regmap_init_si476x(struct si476x_core *core)
{
 return devm_regmap_init(&core->client->dev, ((void*)0),
    core, &si476x_regmap_config);
}
