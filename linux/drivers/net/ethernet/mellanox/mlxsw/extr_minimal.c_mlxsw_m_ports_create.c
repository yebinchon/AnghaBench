
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct mlxsw_m {int* ports; int* module_to_port; int max_ports; int core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int* kcalloc (unsigned int,int,int ) ;
 int kfree (int*) ;
 int* kmalloc_array (unsigned int,int,int ) ;
 unsigned int mlxsw_core_max_ports (int ) ;
 int mlxsw_m_port_create (struct mlxsw_m*,int,int) ;
 int mlxsw_m_port_module_map (struct mlxsw_m*,int,unsigned int*) ;
 int mlxsw_m_port_module_unmap (struct mlxsw_m*,int) ;
 int mlxsw_m_port_remove (struct mlxsw_m*,int) ;

__attribute__((used)) static int mlxsw_m_ports_create(struct mlxsw_m *mlxsw_m)
{
 unsigned int max_ports = mlxsw_core_max_ports(mlxsw_m->core);
 u8 last_module = max_ports;
 int i;
 int err;

 mlxsw_m->ports = kcalloc(max_ports, sizeof(*mlxsw_m->ports),
     GFP_KERNEL);
 if (!mlxsw_m->ports)
  return -ENOMEM;

 mlxsw_m->module_to_port = kmalloc_array(max_ports, sizeof(int),
      GFP_KERNEL);
 if (!mlxsw_m->module_to_port) {
  err = -ENOMEM;
  goto err_module_to_port_alloc;
 }


 for (i = 0; i < max_ports; i++)
  mlxsw_m->module_to_port[i] = -1;


 for (i = 1; i < max_ports; i++) {
  err = mlxsw_m_port_module_map(mlxsw_m, i, &last_module);
  if (err)
   goto err_module_to_port_map;
 }


 for (i = 0; i < mlxsw_m->max_ports; i++) {
  if (mlxsw_m->module_to_port[i] > 0) {
   err = mlxsw_m_port_create(mlxsw_m,
        mlxsw_m->module_to_port[i],
        i);
   if (err)
    goto err_module_to_port_create;
  }
 }

 return 0;

err_module_to_port_create:
 for (i--; i >= 0; i--) {
  if (mlxsw_m->module_to_port[i] > 0)
   mlxsw_m_port_remove(mlxsw_m,
         mlxsw_m->module_to_port[i]);
 }
 i = max_ports;
err_module_to_port_map:
 for (i--; i > 0; i--)
  mlxsw_m_port_module_unmap(mlxsw_m, i);
 kfree(mlxsw_m->module_to_port);
err_module_to_port_alloc:
 kfree(mlxsw_m->ports);
 return err;
}
