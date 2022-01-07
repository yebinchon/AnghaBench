
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlxsw_sp_span_parms {TYPE_2__* dest_port; } ;
struct mlxsw_sp_span_entry {struct mlxsw_sp_span_parms parms; int to_dev; TYPE_1__* ops; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_3__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_4__ {scalar_t__ (* configure ) (struct mlxsw_sp_span_entry*,struct mlxsw_sp_span_parms) ;} ;


 int netdev_err (int ,char*,int ) ;
 scalar_t__ stub1 (struct mlxsw_sp_span_entry*,struct mlxsw_sp_span_parms) ;

__attribute__((used)) static void
mlxsw_sp_span_entry_configure(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_span_entry *span_entry,
         struct mlxsw_sp_span_parms sparms)
{
 if (sparms.dest_port) {
  if (sparms.dest_port->mlxsw_sp != mlxsw_sp) {
   netdev_err(span_entry->to_dev, "Cannot mirror to %s, which belongs to a different mlxsw instance",
       sparms.dest_port->dev->name);
   sparms.dest_port = ((void*)0);
  } else if (span_entry->ops->configure(span_entry, sparms)) {
   netdev_err(span_entry->to_dev, "Failed to offload mirror to %s",
       sparms.dest_port->dev->name);
   sparms.dest_port = ((void*)0);
  }
 }

 span_entry->parms = sparms;
}
