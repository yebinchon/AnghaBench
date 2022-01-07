
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mlx5_fw_tracer {TYPE_1__ st_arr; } ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void
mlx5_fw_tracer_clean_saved_traces_array(struct mlx5_fw_tracer *tracer)
{
 mutex_destroy(&tracer->st_arr.lock);
}
