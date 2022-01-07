
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_span_parms {int dummy; } ;


 int mlxsw_sp_span_entry_unoffloadable (struct mlxsw_sp_span_parms*) ;

__attribute__((used)) static int
mlxsw_sp_span_entry_nop_parms(const struct net_device *to_dev,
         struct mlxsw_sp_span_parms *sparmsp)
{
 return mlxsw_sp_span_entry_unoffloadable(sparmsp);
}
