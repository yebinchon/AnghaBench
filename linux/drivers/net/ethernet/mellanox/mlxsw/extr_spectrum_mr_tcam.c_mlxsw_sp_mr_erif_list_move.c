
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_tcam_erif_list {int kvdl_index; int erif_sublists; } ;


 int list_splice (int *,int *) ;

__attribute__((used)) static void mlxsw_sp_mr_erif_list_move(struct mlxsw_sp_mr_tcam_erif_list *to,
           struct mlxsw_sp_mr_tcam_erif_list *from)
{
 list_splice(&from->erif_sublists, &to->erif_sublists);
 to->kvdl_index = from->kvdl_index;
}
