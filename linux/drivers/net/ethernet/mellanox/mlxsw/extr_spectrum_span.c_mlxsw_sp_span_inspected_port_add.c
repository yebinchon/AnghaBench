
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_span_inspected_port {int type; int bound; int list; int local_port; } ;
struct mlxsw_sp_span_entry {int bound_ports_list; } ;
struct mlxsw_sp_port {int local_port; TYPE_2__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {int core; TYPE_1__ span; } ;
typedef enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;
struct TYPE_4__ {int mtu; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SBIB_LEN ;
 int MLXSW_SP_SPAN_EGRESS ;
 struct mlxsw_sp_span_inspected_port* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlxsw_reg_sbib_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 scalar_t__ mlxsw_sp_span_entry_bound_port_find (struct mlxsw_sp_span_entry*,int,struct mlxsw_sp_port*,int) ;
 int mlxsw_sp_span_inspected_port_bind (struct mlxsw_sp_port*,struct mlxsw_sp_span_entry*,int,int) ;
 int mlxsw_sp_span_mtu_to_buffsize (struct mlxsw_sp*,int ) ;
 int netdev_err (TYPE_2__*,char*) ;
 int sbib ;

__attribute__((used)) static int
mlxsw_sp_span_inspected_port_add(struct mlxsw_sp_port *port,
     struct mlxsw_sp_span_entry *span_entry,
     enum mlxsw_sp_span_type type,
     bool bind)
{
 struct mlxsw_sp_span_inspected_port *inspected_port;
 struct mlxsw_sp *mlxsw_sp = port->mlxsw_sp;
 char sbib_pl[MLXSW_REG_SBIB_LEN];
 int i;
 int err;




 if (bind)
  for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
   struct mlxsw_sp_span_entry *curr =
    &mlxsw_sp->span.entries[i];

   if (mlxsw_sp_span_entry_bound_port_find(curr, type,
        port, bind))
    return -EEXIST;
  }


 if (type == MLXSW_SP_SPAN_EGRESS) {
  u32 buffsize = mlxsw_sp_span_mtu_to_buffsize(mlxsw_sp,
            port->dev->mtu);

  mlxsw_reg_sbib_pack(sbib_pl, port->local_port, buffsize);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sbib), sbib_pl);
  if (err) {
   netdev_err(port->dev, "Could not create shared buffer for mirroring\n");
   return err;
  }
 }

 if (bind) {
  err = mlxsw_sp_span_inspected_port_bind(port, span_entry, type,
       1);
  if (err)
   goto err_port_bind;
 }

 inspected_port = kzalloc(sizeof(*inspected_port), GFP_KERNEL);
 if (!inspected_port) {
  err = -ENOMEM;
  goto err_inspected_port_alloc;
 }
 inspected_port->local_port = port->local_port;
 inspected_port->type = type;
 inspected_port->bound = bind;
 list_add_tail(&inspected_port->list, &span_entry->bound_ports_list);

 return 0;

err_inspected_port_alloc:
 if (bind)
  mlxsw_sp_span_inspected_port_bind(port, span_entry, type,
        0);
err_port_bind:
 if (type == MLXSW_SP_SPAN_EGRESS) {
  mlxsw_reg_sbib_pack(sbib_pl, port->local_port, 0);
  mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sbib), sbib_pl);
 }
 return err;
}
