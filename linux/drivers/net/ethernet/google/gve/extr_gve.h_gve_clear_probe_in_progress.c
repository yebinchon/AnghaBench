
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int service_task_flags; } ;


 int GVE_PRIV_FLAGS_PROBE_IN_PROGRESS ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void gve_clear_probe_in_progress(struct gve_priv *priv)
{
 clear_bit(GVE_PRIV_FLAGS_PROBE_IN_PROGRESS, &priv->service_task_flags);
}
