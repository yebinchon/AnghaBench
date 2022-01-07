
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {TYPE_2__* lib; } ;
struct TYPE_4__ {TYPE_1__* bt_params; } ;
struct TYPE_3__ {scalar_t__ advanced_bt_coexist; } ;



__attribute__((used)) static inline bool iwl_advanced_bt_coexist(struct iwl_priv *priv)
{
 return priv->lib->bt_params &&
        priv->lib->bt_params->advanced_bt_coexist;
}
