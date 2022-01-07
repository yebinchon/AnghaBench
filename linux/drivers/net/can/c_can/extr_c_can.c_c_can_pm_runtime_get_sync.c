
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_can_priv {scalar_t__ device; } ;


 int pm_runtime_get_sync (scalar_t__) ;

__attribute__((used)) static inline void c_can_pm_runtime_get_sync(const struct c_can_priv *priv)
{
 if (priv->device)
  pm_runtime_get_sync(priv->device);
}
