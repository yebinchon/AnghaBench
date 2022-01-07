
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int num_of_rates; int data_rates; } ;
struct mwifiex_private {TYPE_1__ curr_bss_params; int media_connected; } ;


 int mwifiex_copy_rates (int *,int ,int ,int ) ;
 int mwifiex_get_supported_rates (struct mwifiex_private*,int *) ;

u32 mwifiex_get_active_data_rates(struct mwifiex_private *priv, u8 *rates)
{
 if (!priv->media_connected)
  return mwifiex_get_supported_rates(priv, rates);
 else
  return mwifiex_copy_rates(rates, 0,
       priv->curr_bss_params.data_rates,
       priv->curr_bss_params.num_of_rates);
}
