
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int service_task_flags; } ;


 int GVE_PRIV_FLAGS_DO_RESET ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void gve_set_do_reset(struct gve_priv *priv)
{
 set_bit(GVE_PRIV_FLAGS_DO_RESET, &priv->service_task_flags);
}
