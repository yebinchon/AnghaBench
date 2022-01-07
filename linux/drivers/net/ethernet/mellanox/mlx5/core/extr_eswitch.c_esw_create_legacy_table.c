
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int legacy; } ;
struct mlx5_eswitch {TYPE_1__ fdb_table; } ;
struct legacy_fdb {int dummy; } ;


 int esw_create_legacy_fdb_table (struct mlx5_eswitch*) ;
 int esw_create_legacy_vepa_table (struct mlx5_eswitch*) ;
 int esw_destroy_legacy_vepa_table (struct mlx5_eswitch*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int esw_create_legacy_table(struct mlx5_eswitch *esw)
{
 int err;

 memset(&esw->fdb_table.legacy, 0, sizeof(struct legacy_fdb));

 err = esw_create_legacy_vepa_table(esw);
 if (err)
  return err;

 err = esw_create_legacy_fdb_table(esw);
 if (err)
  esw_destroy_legacy_vepa_table(esw);

 return err;
}
