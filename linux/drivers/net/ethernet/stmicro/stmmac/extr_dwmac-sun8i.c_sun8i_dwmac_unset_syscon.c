
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_priv_data {int regmap_field; TYPE_1__* variant; } ;
struct TYPE_2__ {int default_syscon_value; } ;


 int regmap_field_write (int ,int ) ;

__attribute__((used)) static void sun8i_dwmac_unset_syscon(struct sunxi_priv_data *gmac)
{
 u32 reg = gmac->variant->default_syscon_value;

 regmap_field_write(gmac->regmap_field, reg);
}
