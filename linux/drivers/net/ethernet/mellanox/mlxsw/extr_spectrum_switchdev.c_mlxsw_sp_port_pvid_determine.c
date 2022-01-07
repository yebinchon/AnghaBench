
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_port {scalar_t__ pvid; } ;



__attribute__((used)) static u16
mlxsw_sp_port_pvid_determine(const struct mlxsw_sp_port *mlxsw_sp_port,
        u16 vid, bool is_pvid)
{
 if (is_pvid)
  return vid;
 else if (mlxsw_sp_port->pvid == vid)
  return 0;
 else
  return mlxsw_sp_port->pvid;
}
