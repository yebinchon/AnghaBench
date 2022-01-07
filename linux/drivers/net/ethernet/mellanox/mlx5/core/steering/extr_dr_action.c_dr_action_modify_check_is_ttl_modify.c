
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;


 scalar_t__ MLX5_ACTION_IN_FIELD_OUT_IP_TTL ;
 scalar_t__ MLX5_GET (int ,int const*,int ) ;
 int field ;
 int set_action_in ;

__attribute__((used)) static bool
dr_action_modify_check_is_ttl_modify(const u64 *sw_action)
{
 u16 sw_field = MLX5_GET(set_action_in, sw_action, field);

 return sw_field == MLX5_ACTION_IN_FIELD_OUT_IP_TTL;
}
