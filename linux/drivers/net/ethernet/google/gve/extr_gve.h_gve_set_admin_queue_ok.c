
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int state_flags; } ;


 int GVE_PRIV_FLAGS_ADMIN_QUEUE_OK ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void gve_set_admin_queue_ok(struct gve_priv *priv)
{
 set_bit(GVE_PRIV_FLAGS_ADMIN_QUEUE_OK, &priv->state_flags);
}
