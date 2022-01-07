
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_11h_active; } ;
struct mwifiex_private {TYPE_1__ state_11h; } ;



inline int mwifiex_is_11h_active(struct mwifiex_private *priv)
{
 return priv->state_11h.is_11h_active;
}
