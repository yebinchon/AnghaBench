
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {scalar_t__ channel_count; int channel_info; } ;


 int kfree (int ) ;

void
il_free_channel_map(struct il_priv *il)
{
 kfree(il->channel_info);
 il->channel_count = 0;
}
