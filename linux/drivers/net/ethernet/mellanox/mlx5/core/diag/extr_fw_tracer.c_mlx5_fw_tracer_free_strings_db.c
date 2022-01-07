
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_string_db; int ** buffer; } ;
struct mlx5_fw_tracer {TYPE_1__ str_db; } ;


 int kfree (int *) ;

__attribute__((used)) static void mlx5_fw_tracer_free_strings_db(struct mlx5_fw_tracer *tracer)
{
 u32 num_string_db = tracer->str_db.num_string_db;
 int i;

 for (i = 0; i < num_string_db; i++) {
  kfree(tracer->str_db.buffer[i]);
  tracer->str_db.buffer[i] = ((void*)0);
 }
}
