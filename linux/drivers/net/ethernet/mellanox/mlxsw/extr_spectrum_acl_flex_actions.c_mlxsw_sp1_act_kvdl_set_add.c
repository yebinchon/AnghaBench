
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mlxsw_sp_act_kvdl_set_add (void*,int *,char*,int,int) ;

__attribute__((used)) static int mlxsw_sp1_act_kvdl_set_add(void *priv, u32 *p_kvdl_index,
          char *enc_actions, bool is_first)
{
 return mlxsw_sp_act_kvdl_set_add(priv, p_kvdl_index, enc_actions,
      is_first, 0);
}
