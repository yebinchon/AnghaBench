
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlxsw_sp_qdisc {scalar_t__ handle; TYPE_1__* ops; } ;
typedef enum mlxsw_sp_qdisc_type { ____Placeholder_mlxsw_sp_qdisc_type } mlxsw_sp_qdisc_type ;
struct TYPE_2__ {int type; } ;



__attribute__((used)) static bool
mlxsw_sp_qdisc_compare(struct mlxsw_sp_qdisc *mlxsw_sp_qdisc, u32 handle,
         enum mlxsw_sp_qdisc_type type)
{
 return mlxsw_sp_qdisc && mlxsw_sp_qdisc->ops &&
        mlxsw_sp_qdisc->ops->type == type &&
        mlxsw_sp_qdisc->handle == handle;
}
