
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_rss_params {int hfunc; int toeplitz_hash_key; int indirection_rqt; } ;
struct mlx5e_priv {struct mlx5e_rss_params rss_params; } ;


 int memcpy (int *,int ,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
     u8 *hfunc)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5e_rss_params *rss = &priv->rss_params;

 if (indir)
  memcpy(indir, rss->indirection_rqt,
         sizeof(rss->indirection_rqt));

 if (key)
  memcpy(key, rss->toeplitz_hash_key,
         sizeof(rss->toeplitz_hash_key));

 if (hfunc)
  *hfunc = rss->hfunc;

 return 0;
}
