
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int state_flags; } ;


 int GVE_PRIV_FLAGS_DEVICE_RESOURCES_OK ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void gve_clear_device_resources_ok(struct gve_priv *priv)
{
 clear_bit(GVE_PRIV_FLAGS_DEVICE_RESOURCES_OK, &priv->state_flags);
}
