
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_tcam_erif_list {int erif_sublists; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void
mlxsw_sp_mr_erif_list_init(struct mlxsw_sp_mr_tcam_erif_list *erif_list)
{
 INIT_LIST_HEAD(&erif_list->erif_sublists);
}
