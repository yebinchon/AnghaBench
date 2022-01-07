
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mlxsw_afa_trapdisc_mirror_agent_set (char*,int ) ;
 int mlxsw_afa_trapdisc_mirror_enable_set (char*,int) ;

__attribute__((used)) static inline void
mlxsw_afa_trapdisc_mirror_pack(char *payload, bool mirror_enable,
          u8 mirror_agent)
{
 mlxsw_afa_trapdisc_mirror_enable_set(payload, mirror_enable);
 mlxsw_afa_trapdisc_mirror_agent_set(payload, mirror_agent);
}
