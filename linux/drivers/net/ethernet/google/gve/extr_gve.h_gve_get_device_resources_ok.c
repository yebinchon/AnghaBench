
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int state_flags; } ;


 int GVE_PRIV_FLAGS_DEVICE_RESOURCES_OK ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool gve_get_device_resources_ok(struct gve_priv *priv)
{
 return test_bit(GVE_PRIV_FLAGS_DEVICE_RESOURCES_OK, &priv->state_flags);
}
