
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_mpat_eth_rspan_vid_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mpat_eth_rspan_pack(char *payload, u16 vid)
{
 mlxsw_reg_mpat_eth_rspan_vid_set(payload, vid);
}
