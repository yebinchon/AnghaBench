
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* vf_admin; } ;
struct TYPE_5__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_1__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef int guid ;
typedef int __be64 ;
struct TYPE_8__ {TYPE_2__* vport; } ;
struct TYPE_6__ {int guid; } ;


 int cpu_to_be64 (unsigned long long) ;
 int get_random_bytes (char*,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void mlx4_set_random_admin_guid(struct mlx4_dev *dev, int entry, int port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 __be64 guid;


 if (entry == 0)
  return;

 get_random_bytes((char *)&guid, sizeof(guid));
 guid &= ~(cpu_to_be64(1ULL << 56));
 guid |= cpu_to_be64(1ULL << 57);
 priv->mfunc.master.vf_admin[entry].vport[port].guid = guid;
}
