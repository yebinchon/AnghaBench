
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int raw; } ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int name; } ;
struct TYPE_2__ {int qpn; } ;
struct mlx5i_priv {int qkey; TYPE_1__ qp; } ;
struct mlx5e_priv {struct mlx5i_priv* ppriv; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;


 int mlx5_core_attach_mcg (struct mlx5_core_dev*,union ib_gid*,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int ,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ,int ) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;

__attribute__((used)) static int mlx5i_attach_mcast(struct net_device *netdev, struct ib_device *hca,
         union ib_gid *gid, u16 lid, int set_qkey,
         u32 qkey)
{
 struct mlx5e_priv *epriv = mlx5i_epriv(netdev);
 struct mlx5_core_dev *mdev = epriv->mdev;
 struct mlx5i_priv *ipriv = epriv->ppriv;
 int err;

 mlx5_core_dbg(mdev, "attaching QPN 0x%x, MGID %pI6\n", ipriv->qp.qpn, gid->raw);
 err = mlx5_core_attach_mcg(mdev, gid, ipriv->qp.qpn);
 if (err)
  mlx5_core_warn(mdev, "failed attaching QPN 0x%x, MGID %pI6\n",
          ipriv->qp.qpn, gid->raw);

 if (set_qkey) {
  mlx5_core_dbg(mdev, "%s setting qkey 0x%x\n",
         netdev->name, qkey);
  ipriv->qkey = qkey;
 }

 return err;
}
