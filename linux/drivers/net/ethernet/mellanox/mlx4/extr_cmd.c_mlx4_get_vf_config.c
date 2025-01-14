
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_vport_state {int mac; int link_state; int spoofchk; int tx_rate; int vlan_proto; int default_qos; int default_vlan; } ;
struct TYPE_5__ {TYPE_1__* vf_admin; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct ifla_vf_info {int vf; int* mac; int linkstate; int spoofchk; scalar_t__ min_tx_rate; int max_tx_rate; int vlan_proto; int qos; int vlan; } ;
struct TYPE_4__ {struct mlx4_vport_state* vport; } ;


 int EINVAL ;
 int EPROTONOSUPPORT ;
 int mlx4_get_slave_indx (struct mlx4_dev*,int) ;
 int mlx4_is_master (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_vf_vst_and_prio_qos (struct mlx4_dev*,int,struct mlx4_vport_state*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_get_vf_config(struct mlx4_dev *dev, int port, int vf, struct ifla_vf_info *ivf)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_vport_state *s_info;
 int slave;

 if (!mlx4_is_master(dev))
  return -EPROTONOSUPPORT;

 slave = mlx4_get_slave_indx(dev, vf);
 if (slave < 0)
  return -EINVAL;

 s_info = &priv->mfunc.master.vf_admin[slave].vport[port];
 ivf->vf = vf;


 ivf->mac[0] = ((s_info->mac >> (5*8)) & 0xff);
 ivf->mac[1] = ((s_info->mac >> (4*8)) & 0xff);
 ivf->mac[2] = ((s_info->mac >> (3*8)) & 0xff);
 ivf->mac[3] = ((s_info->mac >> (2*8)) & 0xff);
 ivf->mac[4] = ((s_info->mac >> (1*8)) & 0xff);
 ivf->mac[5] = ((s_info->mac) & 0xff);

 ivf->vlan = s_info->default_vlan;
 ivf->qos = s_info->default_qos;
 ivf->vlan_proto = s_info->vlan_proto;

 if (mlx4_is_vf_vst_and_prio_qos(dev, port, s_info))
  ivf->max_tx_rate = s_info->tx_rate;
 else
  ivf->max_tx_rate = 0;

 ivf->min_tx_rate = 0;
 ivf->spoofchk = s_info->spoofchk;
 ivf->linkstate = s_info->link_state;

 return 0;
}
