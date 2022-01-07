
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_reset_cmd {int cold_rst; int member_0; } ;
struct sja1105_private {TYPE_1__* info; } ;
struct TYPE_2__ {int (* reset_cmd ) (struct sja1105_private const*,struct sja1105_reset_cmd*) ;} ;


 int stub1 (struct sja1105_private const*,struct sja1105_reset_cmd*) ;

__attribute__((used)) static int sja1105_cold_reset(const struct sja1105_private *priv)
{
 struct sja1105_reset_cmd reset = {0};

 reset.cold_rst = 1;
 return priv->info->reset_cmd(priv, &reset);
}
