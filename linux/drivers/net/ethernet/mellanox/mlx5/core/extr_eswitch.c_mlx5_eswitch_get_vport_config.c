
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int max_rate; int min_rate; int trusted; int spoofchk; int qos; int vlan; int link_state; int mac; } ;
struct mlx5_vport {TYPE_1__ info; } ;
struct mlx5_eswitch {int state_lock; } ;
struct ifla_vf_info {int max_tx_rate; int min_tx_rate; int trusted; int spoofchk; int qos; int vlan; int linkstate; int mac; scalar_t__ vf; } ;


 scalar_t__ IS_ERR (struct mlx5_vport*) ;
 int PTR_ERR (struct mlx5_vport*) ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct ifla_vf_info*,int ,int) ;
 struct mlx5_vport* mlx5_eswitch_get_vport (struct mlx5_eswitch*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_get_vport_config(struct mlx5_eswitch *esw,
      u16 vport, struct ifla_vf_info *ivi)
{
 struct mlx5_vport *evport = mlx5_eswitch_get_vport(esw, vport);

 if (IS_ERR(evport))
  return PTR_ERR(evport);

 memset(ivi, 0, sizeof(*ivi));
 ivi->vf = vport - 1;

 mutex_lock(&esw->state_lock);
 ether_addr_copy(ivi->mac, evport->info.mac);
 ivi->linkstate = evport->info.link_state;
 ivi->vlan = evport->info.vlan;
 ivi->qos = evport->info.qos;
 ivi->spoofchk = evport->info.spoofchk;
 ivi->trusted = evport->info.trusted;
 ivi->min_tx_rate = evport->info.min_rate;
 ivi->max_tx_rate = evport->info.max_rate;
 mutex_unlock(&esw->state_lock);

 return 0;
}
