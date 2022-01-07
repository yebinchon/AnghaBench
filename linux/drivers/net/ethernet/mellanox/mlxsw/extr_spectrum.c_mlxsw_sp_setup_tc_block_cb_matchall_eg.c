
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int mlxsw_sp_setup_tc_block_cb_matchall (int,void*,void*,int) ;

__attribute__((used)) static int mlxsw_sp_setup_tc_block_cb_matchall_eg(enum tc_setup_type type,
        void *type_data,
        void *cb_priv)
{
 return mlxsw_sp_setup_tc_block_cb_matchall(type, type_data,
         cb_priv, 0);
}
