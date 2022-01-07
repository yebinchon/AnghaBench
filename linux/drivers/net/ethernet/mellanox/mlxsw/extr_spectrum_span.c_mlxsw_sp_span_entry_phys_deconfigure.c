
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_entry {int dummy; } ;


 int MLXSW_REG_MPAT_SPAN_TYPE_LOCAL_ETH ;
 int mlxsw_sp_span_entry_deconfigure_common (struct mlxsw_sp_span_entry*,int ) ;

__attribute__((used)) static void
mlxsw_sp_span_entry_phys_deconfigure(struct mlxsw_sp_span_entry *span_entry)
{
 mlxsw_sp_span_entry_deconfigure_common(span_entry,
         MLXSW_REG_MPAT_SPAN_TYPE_LOCAL_ETH);
}
