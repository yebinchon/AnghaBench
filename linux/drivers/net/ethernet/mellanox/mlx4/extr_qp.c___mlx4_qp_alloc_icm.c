
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_table {int qp_table; int auxc_table; int altc_table; int rdmarc_table; int cmpt_table; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_get (struct mlx4_dev*,int *,int) ;
 int mlx4_table_put (struct mlx4_dev*,int *,int) ;

int __mlx4_qp_alloc_icm(struct mlx4_dev *dev, int qpn)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_qp_table *qp_table = &priv->qp_table;
 int err;

 err = mlx4_table_get(dev, &qp_table->qp_table, qpn);
 if (err)
  goto err_out;

 err = mlx4_table_get(dev, &qp_table->auxc_table, qpn);
 if (err)
  goto err_put_qp;

 err = mlx4_table_get(dev, &qp_table->altc_table, qpn);
 if (err)
  goto err_put_auxc;

 err = mlx4_table_get(dev, &qp_table->rdmarc_table, qpn);
 if (err)
  goto err_put_altc;

 err = mlx4_table_get(dev, &qp_table->cmpt_table, qpn);
 if (err)
  goto err_put_rdmarc;

 return 0;

err_put_rdmarc:
 mlx4_table_put(dev, &qp_table->rdmarc_table, qpn);

err_put_altc:
 mlx4_table_put(dev, &qp_table->altc_table, qpn);

err_put_auxc:
 mlx4_table_put(dev, &qp_table->auxc_table, qpn);

err_put_qp:
 mlx4_table_put(dev, &qp_table->qp_table, qpn);

err_out:
 return err;
}
