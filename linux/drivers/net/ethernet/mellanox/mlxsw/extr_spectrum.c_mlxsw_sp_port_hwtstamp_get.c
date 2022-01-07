
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_port {TYPE_2__* mlxsw_sp; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
typedef int config ;
struct TYPE_4__ {TYPE_1__* ptp_ops; } ;
struct TYPE_3__ {int (* hwtstamp_get ) (struct mlxsw_sp_port*,struct hwtstamp_config*) ;} ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int stub1 (struct mlxsw_sp_port*,struct hwtstamp_config*) ;

__attribute__((used)) static int mlxsw_sp_port_hwtstamp_get(struct mlxsw_sp_port *mlxsw_sp_port,
          struct ifreq *ifr)
{
 struct hwtstamp_config config;
 int err;

 err = mlxsw_sp_port->mlxsw_sp->ptp_ops->hwtstamp_get(mlxsw_sp_port,
            &config);
 if (err)
  return err;

 if (copy_to_user(ifr->ifr_data, &config, sizeof(config)))
  return -EFAULT;

 return 0;
}
