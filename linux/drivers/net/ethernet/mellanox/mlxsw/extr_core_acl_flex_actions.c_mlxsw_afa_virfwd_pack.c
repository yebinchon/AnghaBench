
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_afa_virfwd_fid_cmd { ____Placeholder_mlxsw_afa_virfwd_fid_cmd } mlxsw_afa_virfwd_fid_cmd ;


 int mlxsw_afa_virfwd_fid_cmd_set (char*,int) ;
 int mlxsw_afa_virfwd_fid_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_afa_virfwd_pack(char *payload,
      enum mlxsw_afa_virfwd_fid_cmd fid_cmd,
      u16 fid)
{
 mlxsw_afa_virfwd_fid_cmd_set(payload, fid_cmd);
 mlxsw_afa_virfwd_fid_set(payload, fid);
}
