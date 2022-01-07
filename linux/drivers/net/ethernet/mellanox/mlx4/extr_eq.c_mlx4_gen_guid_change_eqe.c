
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int port; } ;
struct TYPE_6__ {TYPE_2__ port_mgmt_change; } ;
struct mlx4_eqe {TYPE_3__ event; int subtype; int type; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
typedef int eqe ;
struct TYPE_4__ {int num_vfs; } ;


 int MLX4_DEV_PMC_SUBTYPE_GUID_INFO ;
 int MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT ;
 int memset (struct mlx4_eqe*,int ,int) ;
 int mlx4_GEN_EQE (struct mlx4_dev*,int,struct mlx4_eqe*) ;
 int mlx4_phys_to_slave_port (struct mlx4_dev*,int,int ) ;

int mlx4_gen_guid_change_eqe(struct mlx4_dev *dev, int slave, u8 port)
{
 struct mlx4_eqe eqe;


 if (dev->persist->num_vfs < slave)
  return 0;
 memset(&eqe, 0, sizeof(eqe));

 eqe.type = MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT;
 eqe.subtype = MLX4_DEV_PMC_SUBTYPE_GUID_INFO;
 eqe.event.port_mgmt_change.port = mlx4_phys_to_slave_port(dev, slave, port);

 return mlx4_GEN_EQE(dev, slave, &eqe);
}
