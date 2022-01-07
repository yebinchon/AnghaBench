
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_IRQ_VEC_COMP_BASE ;
 int MLX5_MAX_IRQ_NAME ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static void irq_set_name(char *name, int vecidx)
{
 if (vecidx == 0) {
  snprintf(name, MLX5_MAX_IRQ_NAME, "mlx5_async");
  return;
 }

 snprintf(name, MLX5_MAX_IRQ_NAME, "mlx5_comp%d",
   vecidx - MLX5_IRQ_VEC_COMP_BASE);
 return;
}
